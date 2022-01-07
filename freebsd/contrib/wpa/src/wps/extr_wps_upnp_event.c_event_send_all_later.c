
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upnp_wps_device_sm {int event_send_all_queued; } ;


 int EVENT_DELAY_MSEC ;
 int EVENT_DELAY_SECONDS ;
 int eloop_register_timeout (int ,int ,int ,int *,struct upnp_wps_device_sm*) ;
 int event_send_all_later_handler ;

void event_send_all_later(struct upnp_wps_device_sm *sm)
{




 if (sm->event_send_all_queued)
  return;
 sm->event_send_all_queued = 1;
 eloop_register_timeout(EVENT_DELAY_SECONDS, EVENT_DELAY_MSEC,
          event_send_all_later_handler, ((void*)0), sm);
}
