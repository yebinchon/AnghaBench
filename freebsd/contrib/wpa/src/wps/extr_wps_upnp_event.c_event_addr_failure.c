
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_event_ {TYPE_1__* addr; struct subscription* s; } ;
struct subscription {int list; int addr_list; } ;
struct TYPE_2__ {scalar_t__ num_failures; int list; int domain_and_port; } ;


 scalar_t__ MAX_FAILURES ;
 int MSG_DEBUG ;
 int dl_list_del (int *) ;
 scalar_t__ dl_list_empty (int *) ;
 int event_retry (struct wps_event_*,int) ;
 int subscr_addr_delete (TYPE_1__*) ;
 int subscription_destroy (struct subscription*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void event_addr_failure(struct wps_event_ *e)
{
 struct subscription *s = e->s;

 e->addr->num_failures++;
 wpa_printf(MSG_DEBUG, "WPS UPnP: Failed to send event %p to %s "
     "(num_failures=%u)",
     e, e->addr->domain_and_port, e->addr->num_failures);

 if (e->addr->num_failures < MAX_FAILURES) {

  event_retry(e, 1);
  return;
 }





 wpa_printf(MSG_DEBUG, "WPS UPnP: Deleting subscription %p "
     "address %s due to errors", s, e->addr->domain_and_port);
 dl_list_del(&e->addr->list);
 subscr_addr_delete(e->addr);
 e->addr = ((void*)0);

 if (dl_list_empty(&s->addr_list)) {

  wpa_printf(MSG_DEBUG, "WPS UPnP: Removing subscription %p "
      "with no addresses", s);
  dl_list_del(&s->list);
  subscription_destroy(s);
  return;
 }


 event_retry(e, 0);
}
