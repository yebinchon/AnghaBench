
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {scalar_t__* selected_registrar; int * sel_reg_config_methods; int * dev_password_id; } ;


 int DEV_PW_PUSHBUTTON ;
 int WPA_GET_BE16 (int *) ;
 int WPS_CONFIG_DISPLAY ;
 int WPS_CONFIG_KEYPAD ;
 int WPS_CONFIG_LABEL ;

__attribute__((used)) static int is_selected_pin_registrar(struct wps_parse_attr *attr)
{
 if (!attr->selected_registrar || *attr->selected_registrar == 0)
  return 0;

 if (attr->dev_password_id != ((void*)0) &&
     WPA_GET_BE16(attr->dev_password_id) == DEV_PW_PUSHBUTTON)
  return 0;
 return 1;
}
