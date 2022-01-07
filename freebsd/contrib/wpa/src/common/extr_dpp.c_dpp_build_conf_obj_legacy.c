
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct dpp_configuration {int akm; } ;
struct dpp_authentication {int dummy; } ;


 int MSG_DEBUG ;
 int dpp_akm_str (int ) ;
 struct wpabuf* dpp_build_conf_start (struct dpp_authentication*,struct dpp_configuration*,int) ;
 int dpp_build_legacy_cred_params (struct wpabuf*,struct dpp_configuration*) ;
 int wpa_hexdump_ascii_key (int ,char*,int ,int ) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_printf (struct wpabuf*,char*,int ) ;
 int wpabuf_put_str (struct wpabuf*,char*) ;

__attribute__((used)) static struct wpabuf *
dpp_build_conf_obj_legacy(struct dpp_authentication *auth, int ap,
     struct dpp_configuration *conf)
{
 struct wpabuf *buf;

 buf = dpp_build_conf_start(auth, conf, 1000);
 if (!buf)
  return ((void*)0);

 wpabuf_printf(buf, "\"cred\":{\"akm\":\"%s\",", dpp_akm_str(conf->akm));
 dpp_build_legacy_cred_params(buf, conf);
 wpabuf_put_str(buf, "}}");

 wpa_hexdump_ascii_key(MSG_DEBUG, "DPP: Configuration Object (legacy)",
         wpabuf_head(buf), wpabuf_len(buf));

 return buf;
}
