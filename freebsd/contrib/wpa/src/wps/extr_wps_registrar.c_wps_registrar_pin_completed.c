
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_registrar {scalar_t__ selected_registrar; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct wps_registrar*,int *) ;
 int wpa_printf (int ,char*) ;
 int wps_registrar_selected_registrar_changed (struct wps_registrar*,int ) ;
 int wps_registrar_set_selected_timeout ;

__attribute__((used)) static void wps_registrar_pin_completed(struct wps_registrar *reg)
{
 wpa_printf(MSG_DEBUG, "WPS: PIN completed using internal Registrar");
 eloop_cancel_timeout(wps_registrar_set_selected_timeout, reg, ((void*)0));
 reg->selected_registrar = 0;
 wps_registrar_selected_registrar_changed(reg, 0);
}
