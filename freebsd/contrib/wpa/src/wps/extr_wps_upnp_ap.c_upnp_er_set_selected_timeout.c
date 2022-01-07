
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_registrar {int dummy; } ;
struct subscription {scalar_t__ selected_registrar; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wps_registrar_selected_registrar_changed (struct wps_registrar*,int ) ;

__attribute__((used)) static void upnp_er_set_selected_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct subscription *s = eloop_ctx;
 struct wps_registrar *reg = timeout_ctx;
 wpa_printf(MSG_DEBUG, "WPS: SetSelectedRegistrar from ER timed out");
 s->selected_registrar = 0;
 wps_registrar_selected_registrar_changed(reg, 0);
}
