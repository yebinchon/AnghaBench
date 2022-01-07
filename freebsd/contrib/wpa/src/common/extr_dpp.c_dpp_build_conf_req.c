
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct dpp_authentication {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 struct wpabuf* dpp_build_conf_req_attr (struct dpp_authentication*,char const*) ;
 int dpp_write_adv_proto (struct wpabuf*) ;
 int dpp_write_gas_query (struct wpabuf*,struct wpabuf*) ;
 struct wpabuf* gas_build_initial_req (int ,scalar_t__) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;

struct wpabuf * dpp_build_conf_req(struct dpp_authentication *auth,
       const char *json)
{
 struct wpabuf *buf, *conf_req;

 conf_req = dpp_build_conf_req_attr(auth, json);
 if (!conf_req) {
  wpa_printf(MSG_DEBUG,
      "DPP: No configuration request data available");
  return ((void*)0);
 }

 buf = gas_build_initial_req(0, 10 + 2 + wpabuf_len(conf_req));
 if (!buf) {
  wpabuf_free(conf_req);
  return ((void*)0);
 }

 dpp_write_adv_proto(buf);
 dpp_write_gas_query(buf, conf_req);
 wpabuf_free(conf_req);
 wpa_hexdump_buf(MSG_MSGDUMP, "DPP: GAS Config Request", buf);

 return buf;
}
