
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_registrar {int wps; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct wps_registrar*,int *) ;
 int wpa_printf (int ,char*) ;
 int wps_pbc_disable_event (int ) ;
 int wps_registrar_pbc_timeout ;
 int wps_registrar_stop_pbc (struct wps_registrar*) ;

__attribute__((used)) static void wps_registrar_pbc_completed(struct wps_registrar *reg)
{
 wpa_printf(MSG_DEBUG, "WPS: PBC completed - stopping PBC mode");
 eloop_cancel_timeout(wps_registrar_pbc_timeout, reg, ((void*)0));
 wps_registrar_stop_pbc(reg);
 wps_pbc_disable_event(reg->wps);
}
