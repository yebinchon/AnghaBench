
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_registrar {int dummy; } ;
struct wps_parse_attr {scalar_t__* selected_registrar; int authorized_macs_len; int version2; scalar_t__ authorized_macs; scalar_t__ sel_reg_config_methods; scalar_t__ dev_password_id; } ;
struct wpabuf {int dummy; } ;
struct subscription {int selected_registrar; int dev_password_id; int config_methods; int authorized_macs; struct wps_registrar* reg; } ;


 int DEV_PW_DEFAULT ;
 int ETH_ALEN ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int WPA_GET_BE16 (scalar_t__) ;
 int WPS_MAX_AUTHORIZED_MACS ;
 int WPS_PBC_WALK_TIME ;
 int eloop_cancel_timeout (int ,struct subscription*,struct wps_registrar*) ;
 int eloop_register_timeout (int ,int ,int ,struct subscription*,struct wps_registrar*) ;
 int os_memcpy (int ,scalar_t__,int) ;
 int os_memset (int ,int,int) ;
 int upnp_er_set_selected_timeout ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf const*) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;
 int wps_registrar_selected_registrar_changed (struct wps_registrar*,int ) ;
 scalar_t__ wps_validate_upnp_set_selected_registrar (struct wpabuf const*) ;

int upnp_er_set_selected_registrar(struct wps_registrar *reg,
       struct subscription *s,
       const struct wpabuf *msg)
{
 struct wps_parse_attr attr;

 wpa_hexdump_buf(MSG_MSGDUMP, "WPS: SetSelectedRegistrar attributes",
   msg);
 if (wps_validate_upnp_set_selected_registrar(msg) < 0 ||
     wps_parse_msg(msg, &attr) < 0)
  return -1;

 s->reg = reg;
 eloop_cancel_timeout(upnp_er_set_selected_timeout, s, reg);

 os_memset(s->authorized_macs, 0, sizeof(s->authorized_macs));
 if (attr.selected_registrar == ((void*)0) || *attr.selected_registrar == 0) {
  wpa_printf(MSG_DEBUG, "WPS: SetSelectedRegistrar: Disable "
      "Selected Registrar");
  s->selected_registrar = 0;
 } else {
  s->selected_registrar = 1;
  s->dev_password_id = attr.dev_password_id ?
   WPA_GET_BE16(attr.dev_password_id) : DEV_PW_DEFAULT;
  s->config_methods = attr.sel_reg_config_methods ?
   WPA_GET_BE16(attr.sel_reg_config_methods) : -1;
  if (attr.authorized_macs) {
   int count = attr.authorized_macs_len / ETH_ALEN;
   if (count > WPS_MAX_AUTHORIZED_MACS)
    count = WPS_MAX_AUTHORIZED_MACS;
   os_memcpy(s->authorized_macs, attr.authorized_macs,
      count * ETH_ALEN);
  } else if (!attr.version2) {
   wpa_printf(MSG_DEBUG, "WPS: Add broadcast "
       "AuthorizedMACs for WPS 1.0 ER");
   os_memset(s->authorized_macs, 0xff, ETH_ALEN);
  }
  eloop_register_timeout(WPS_PBC_WALK_TIME, 0,
           upnp_er_set_selected_timeout, s, reg);
 }

 wps_registrar_selected_registrar_changed(reg, 0);

 return 0;
}
