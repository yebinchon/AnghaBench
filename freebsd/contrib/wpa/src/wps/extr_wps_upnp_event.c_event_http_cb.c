
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_event_ {TYPE_1__* addr; struct subscription* s; } ;
struct subscription {int sm; int event_queue; int last_event_failed; } ;
struct http_client {int dummy; } ;
typedef enum http_client_event { ____Placeholder_http_client_event } http_client_event ;
struct TYPE_2__ {int num_failures; int domain_and_port; } ;






 int MSG_DEBUG ;
 int dl_list_empty (int *) ;
 int event_addr_failure (struct wps_event_*) ;
 int event_delete (struct wps_event_*) ;
 int event_send_all_later (int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void event_http_cb(void *ctx, struct http_client *c,
     enum http_client_event event)
{
 struct wps_event_ *e = ctx;
 struct subscription *s = e->s;

 wpa_printf(MSG_DEBUG, "WPS UPnP: HTTP client callback: e=%p c=%p "
     "event=%d", e, c, event);
 switch (event) {
 case 129:
  wpa_printf(MSG_DEBUG,
      "WPS UPnP: Got event %p reply OK from %s",
      e, e->addr->domain_and_port);
  e->addr->num_failures = 0;
  s->last_event_failed = 0;
  event_delete(e);


  if (!dl_list_empty(&s->event_queue))
   event_send_all_later(s->sm);
  break;
 case 131:
  wpa_printf(MSG_DEBUG, "WPS UPnP: Event send failure");
  event_addr_failure(e);
  break;
 case 130:
  wpa_printf(MSG_DEBUG, "WPS UPnP: Invalid reply");
  event_addr_failure(e);
  break;
 case 128:
  wpa_printf(MSG_DEBUG, "WPS UPnP: Event send timeout");
  event_addr_failure(e);
  break;
 }
}
