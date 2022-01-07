
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upnp_wps_device_sm {scalar_t__ event_send_all_queued; } ;


 int eloop_cancel_timeout (int ,int *,struct upnp_wps_device_sm*) ;
 int event_send_all_later_handler ;

void event_send_stop_all(struct upnp_wps_device_sm *sm)
{
 if (sm->event_send_all_queued)
  eloop_cancel_timeout(event_send_all_later_handler, ((void*)0), sm);
 sm->event_send_all_queued = 0;
}
