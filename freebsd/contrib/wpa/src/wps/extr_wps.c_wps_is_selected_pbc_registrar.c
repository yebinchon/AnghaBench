
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {scalar_t__* selected_registrar; int sel_reg_config_methods; int dev_password_id; } ;
struct wpabuf {int dummy; } ;


 int DEV_PW_PUSHBUTTON ;
 int WPA_GET_BE16 (int ) ;
 int WPS_CONFIG_PUSHBUTTON ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;

int wps_is_selected_pbc_registrar(const struct wpabuf *msg)
{
 struct wps_parse_attr attr;
 if (wps_parse_msg(msg, &attr) < 0 ||
     !attr.selected_registrar || *attr.selected_registrar == 0 ||
     !attr.dev_password_id ||
     WPA_GET_BE16(attr.dev_password_id) != DEV_PW_PUSHBUTTON)
  return 0;
 return 1;
}
