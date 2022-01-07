
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_registrar {int wps; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wps_pbc_timeout_event (int ) ;
 int wps_registrar_stop_pbc (struct wps_registrar*) ;

__attribute__((used)) static void wps_registrar_pbc_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct wps_registrar *reg = eloop_ctx;

 wpa_printf(MSG_DEBUG, "WPS: PBC timed out - disable PBC mode");
 wps_pbc_timeout_event(reg->wps);
 wps_registrar_stop_pbc(reg);
}
