
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct dpp_configuration {int akm; } ;
struct dpp_authentication {struct dpp_configuration* conf_sta; struct dpp_configuration* conf_ap; scalar_t__ config_obj_override; } ;


 int MSG_DEBUG ;
 scalar_t__ dpp_akm_dpp (int ) ;
 struct wpabuf* dpp_build_conf_obj_dpp (struct dpp_authentication*,int,struct dpp_configuration*) ;
 struct wpabuf* dpp_build_conf_obj_legacy (struct dpp_authentication*,int,struct dpp_configuration*) ;
 int os_strlen (scalar_t__) ;
 int wpa_printf (int ,char*,...) ;
 struct wpabuf* wpabuf_alloc_copy (scalar_t__,int ) ;

__attribute__((used)) static struct wpabuf *
dpp_build_conf_obj(struct dpp_authentication *auth, int ap)
{
 struct dpp_configuration *conf;
 conf = ap ? auth->conf_ap : auth->conf_sta;
 if (!conf) {
  wpa_printf(MSG_DEBUG,
      "DPP: No configuration available for Enrollee(%s) - reject configuration request",
      ap ? "ap" : "sta");
  return ((void*)0);
 }

 if (dpp_akm_dpp(conf->akm))
  return dpp_build_conf_obj_dpp(auth, ap, conf);
 return dpp_build_conf_obj_legacy(auth, ap, conf);
}
