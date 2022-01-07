
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wps_registrar {int sel_reg_dev_password_id_override; int sel_reg_config_methods_override; scalar_t__ pbc; TYPE_1__* wps; scalar_t__ selected_registrar; scalar_t__ authorized_macs_union; int authorized_macs; scalar_t__ sel_reg_union; } ;
struct TYPE_2__ {int config_methods; } ;


 int DEV_PW_PUSHBUTTON ;
 int ETH_ALEN ;
 int MSG_DEBUG ;
 int WPS_CONFIG_PHY_PUSHBUTTON ;
 int WPS_CONFIG_PUSHBUTTON ;
 int WPS_CONFIG_VIRT_PUSHBUTTON ;
 int WPS_MAX_AUTHORIZED_MACS ;
 int os_memcpy (scalar_t__,int ,int) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_printf (int ,char*,...) ;
 int wps_cb_set_sel_reg (struct wps_registrar*) ;
 int wps_registrar_sel_reg_union (struct wps_registrar*) ;
 int wps_set_ie (struct wps_registrar*) ;
 int wps_set_pushbutton (int*,int) ;

void wps_registrar_selected_registrar_changed(struct wps_registrar *reg,
           u16 dev_pw_id)
{
 wpa_printf(MSG_DEBUG, "WPS: Selected registrar information changed");

 reg->sel_reg_union = reg->selected_registrar;
 reg->sel_reg_dev_password_id_override = -1;
 reg->sel_reg_config_methods_override = -1;
 os_memcpy(reg->authorized_macs_union, reg->authorized_macs,
    WPS_MAX_AUTHORIZED_MACS * ETH_ALEN);
 wpa_hexdump(MSG_DEBUG, "WPS: Authorized MACs union (start with own)",
      (u8 *) reg->authorized_macs_union,
      sizeof(reg->authorized_macs_union));
 if (reg->selected_registrar) {
  u16 methods;

  methods = reg->wps->config_methods & ~WPS_CONFIG_PUSHBUTTON;
  methods &= ~(WPS_CONFIG_VIRT_PUSHBUTTON |
        WPS_CONFIG_PHY_PUSHBUTTON);
  if (reg->pbc) {
   reg->sel_reg_dev_password_id_override =
    DEV_PW_PUSHBUTTON;
   wps_set_pushbutton(&methods, reg->wps->config_methods);
  } else if (dev_pw_id)
   reg->sel_reg_dev_password_id_override = dev_pw_id;
  wpa_printf(MSG_DEBUG, "WPS: Internal Registrar selected "
      "(pbc=%d)", reg->pbc);
  reg->sel_reg_config_methods_override = methods;
 } else
  wpa_printf(MSG_DEBUG, "WPS: Internal Registrar not selected");

 wps_registrar_sel_reg_union(reg);

 wps_set_ie(reg);
 wps_cb_set_sel_reg(reg);
}
