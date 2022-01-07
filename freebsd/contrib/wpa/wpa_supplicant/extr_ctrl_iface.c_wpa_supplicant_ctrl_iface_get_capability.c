
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ multi_bss_support; } ;
struct wpa_driver_capa {int dummy; } ;
typedef int field ;


 int MSG_DEBUG ;
 int ctrl_iface_get_capability_auth_alg (struct wpa_supplicant*,int,char*,struct wpa_driver_capa*,char*,size_t) ;
 int ctrl_iface_get_capability_channels (struct wpa_supplicant*,char*,size_t) ;
 int ctrl_iface_get_capability_freq (struct wpa_supplicant*,char*,size_t) ;
 int ctrl_iface_get_capability_group (int,char*,struct wpa_driver_capa*,char*,size_t) ;
 int ctrl_iface_get_capability_group_mgmt (int,char*,struct wpa_driver_capa*,char*,size_t) ;
 int ctrl_iface_get_capability_key_mgmt (int,char*,struct wpa_driver_capa*,char*,size_t) ;
 int ctrl_iface_get_capability_modes (int,char*,struct wpa_driver_capa*,char*,size_t) ;
 int ctrl_iface_get_capability_pairwise (int,char*,struct wpa_driver_capa*,char*,size_t) ;
 int ctrl_iface_get_capability_proto (int,char*,struct wpa_driver_capa*,char*,size_t) ;
 int ctrl_iface_get_capability_tdls (struct wpa_supplicant*,char*,size_t) ;
 int eap_get_names (char*,size_t) ;
 int os_snprintf (char*,size_t,char*) ;
 scalar_t__ os_snprintf_error (size_t,int) ;
 char* os_strchr (char*,char) ;
 scalar_t__ os_strcmp (char*,char*) ;
 size_t os_strlcpy (char*,char const*,int) ;
 int wpa_drv_get_capa (struct wpa_supplicant*,struct wpa_driver_capa*) ;
 scalar_t__ wpa_is_fils_sk_pfs_supported (struct wpa_supplicant*) ;
 scalar_t__ wpa_is_fils_supported (struct wpa_supplicant*) ;
 int wpa_printf (int ,char*,char*,...) ;

__attribute__((used)) static int wpa_supplicant_ctrl_iface_get_capability(
 struct wpa_supplicant *wpa_s, const char *_field, char *buf,
 size_t buflen)
{
 struct wpa_driver_capa capa;
 int res;
 char *strict;
 char field[30];
 size_t len;


 len = os_strlcpy(field, _field, sizeof(field));
 if (len >= sizeof(field))
  return -1;
 strict = os_strchr(field, ' ');
 if (strict != ((void*)0)) {
  *strict++ = '\0';
  if (os_strcmp(strict, "strict") != 0)
   return -1;
 }

 wpa_printf(MSG_DEBUG, "CTRL_IFACE: GET_CAPABILITY '%s' %s",
  field, strict ? strict : "");

 if (os_strcmp(field, "eap") == 0) {
  return eap_get_names(buf, buflen);
 }

 res = wpa_drv_get_capa(wpa_s, &capa);

 if (os_strcmp(field, "pairwise") == 0)
  return ctrl_iface_get_capability_pairwise(res, strict, &capa,
         buf, buflen);

 if (os_strcmp(field, "group") == 0)
  return ctrl_iface_get_capability_group(res, strict, &capa,
             buf, buflen);

 if (os_strcmp(field, "group_mgmt") == 0)
  return ctrl_iface_get_capability_group_mgmt(res, strict, &capa,
           buf, buflen);

 if (os_strcmp(field, "key_mgmt") == 0)
  return ctrl_iface_get_capability_key_mgmt(res, strict, &capa,
         buf, buflen);

 if (os_strcmp(field, "proto") == 0)
  return ctrl_iface_get_capability_proto(res, strict, &capa,
             buf, buflen);

 if (os_strcmp(field, "auth_alg") == 0)
  return ctrl_iface_get_capability_auth_alg(wpa_s, res, strict,
         &capa, buf, buflen);

 if (os_strcmp(field, "modes") == 0)
  return ctrl_iface_get_capability_modes(res, strict, &capa,
             buf, buflen);

 if (os_strcmp(field, "channels") == 0)
  return ctrl_iface_get_capability_channels(wpa_s, buf, buflen);

 if (os_strcmp(field, "freq") == 0)
  return ctrl_iface_get_capability_freq(wpa_s, buf, buflen);
 if (os_strcmp(field, "multibss") == 0 && wpa_s->multi_bss_support) {
  res = os_snprintf(buf, buflen, "MULTIBSS-STA");
  if (os_snprintf_error(buflen, res))
   return -1;
  return res;
 }
 wpa_printf(MSG_DEBUG, "CTRL_IFACE: Unknown GET_CAPABILITY field '%s'",
     field);

 return -1;
}
