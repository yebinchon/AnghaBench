
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_registrar {int dummy; } ;
struct subscription {scalar_t__ selected_registrar; } ;


 int eloop_cancel_timeout (int ,struct subscription*,struct wps_registrar*) ;
 int upnp_er_set_selected_timeout ;
 int wps_registrar_selected_registrar_changed (struct wps_registrar*,int ) ;

void upnp_er_remove_notification(struct wps_registrar *reg,
     struct subscription *s)
{
 s->selected_registrar = 0;
 eloop_cancel_timeout(upnp_er_set_selected_timeout, s, reg);
 if (reg)
  wps_registrar_selected_registrar_changed(reg, 0);
}
