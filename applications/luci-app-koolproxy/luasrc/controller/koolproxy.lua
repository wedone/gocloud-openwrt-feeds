module("luci.controller.koolproxy",package.seeall)
function index()
	if not nixio.fs.access("/etc/config/koolproxy")then
		return
	end

	entry({"admin","push","koolproxy"},cbi("koolproxy/global"),_("KoolProxy"),35).dependent=true
	entry({"admin","push","koolproxy","rss_rule"},cbi("koolproxy/rss_rule"), nil).leaf=true
end
