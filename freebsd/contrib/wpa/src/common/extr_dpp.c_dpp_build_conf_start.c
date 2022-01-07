
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct dpp_configuration {int ssid_len; scalar_t__ ssid; } ;
struct dpp_authentication {char* discovery_override; } ;
typedef int ssid ;


 int MSG_DEBUG ;
 int json_escape_string (char*,int,char const*,int ) ;
 scalar_t__ os_strlen (char*) ;
 int wpa_printf (int ,char*,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_put_str (struct wpabuf*,char*) ;
 int wpabuf_put_u8 (struct wpabuf*,char) ;

__attribute__((used)) static struct wpabuf *
dpp_build_conf_start(struct dpp_authentication *auth,
       struct dpp_configuration *conf, size_t tailroom)
{
 struct wpabuf *buf;
 char ssid[6 * sizeof(conf->ssid) + 1];






 buf = wpabuf_alloc(200 + tailroom);
 if (!buf)
  return ((void*)0);
 wpabuf_put_str(buf, "{\"wi-fi_tech\":\"infra\",\"discovery\":");
 wpabuf_put_str(buf, "{\"ssid\":\"");
 json_escape_string(ssid, sizeof(ssid),
      (const char *) conf->ssid, conf->ssid_len);
 wpabuf_put_str(buf, ssid);
 wpabuf_put_str(buf, "\"},");

 return buf;
}
