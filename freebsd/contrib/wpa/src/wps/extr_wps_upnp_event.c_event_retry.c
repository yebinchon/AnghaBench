
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_event_ {int list; TYPE_1__* addr; int retry; struct subscription* s; } ;
struct upnp_wps_device_sm {int dummy; } ;
struct subscription {int last_event_failed; int event_queue; struct upnp_wps_device_sm* sm; int addr_list; } ;
struct TYPE_2__ {int domain_and_port; } ;


 int MSG_DEBUG ;
 int dl_list_add (int *,int *) ;
 int dl_list_empty (int *) ;
 int dl_list_len (int *) ;
 int event_clean (struct wps_event_*) ;
 int event_delete (struct wps_event_*) ;
 int event_send_all_later (struct upnp_wps_device_sm*) ;
 int wpa_printf (int ,char*,struct wps_event_*,...) ;

__attribute__((used)) static void event_retry(struct wps_event_ *e, int do_next_address)
{
 struct subscription *s = e->s;
 struct upnp_wps_device_sm *sm = s->sm;

 wpa_printf(MSG_DEBUG, "WPS UPnP: Retry event %p for subscription %p",
     e, s);
 event_clean(e);


 if (do_next_address) {
  e->retry++;
  wpa_printf(MSG_DEBUG, "WPS UPnP: Try address %d", e->retry);
 }
 if (e->retry >= dl_list_len(&s->addr_list)) {
  wpa_printf(MSG_DEBUG, "WPS UPnP: Giving up on sending event "
      "for %s", e->addr->domain_and_port);
  event_delete(e);
  s->last_event_failed = 1;
  if (!dl_list_empty(&s->event_queue))
   event_send_all_later(s->sm);
  return;
 }
 dl_list_add(&s->event_queue, &e->list);
 event_send_all_later(sm);
}
