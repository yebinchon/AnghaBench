
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameserver {struct nameserver* next; scalar_t__ state; } ;
struct evdns_base {scalar_t__ global_good_nameservers; struct nameserver* server_head; } ;


 int ASSERT_LOCKED (struct evdns_base*) ;
 int EVUTIL_ASSERT (int) ;

__attribute__((used)) static struct nameserver *
nameserver_pick(struct evdns_base *base) {
 struct nameserver *started_at = base->server_head, *picked;
 ASSERT_LOCKED(base);
 if (!base->server_head) return ((void*)0);



 if (!base->global_good_nameservers) {
  base->server_head = base->server_head->next;
  return base->server_head;
 }


 for (;;) {
  if (base->server_head->state) {

   picked = base->server_head;
   base->server_head = base->server_head->next;
   return picked;
  }

  base->server_head = base->server_head->next;
  if (base->server_head == started_at) {



   EVUTIL_ASSERT(base->global_good_nameservers == 0);
   picked = base->server_head;
   base->server_head = base->server_head->next;
   return picked;
  }
 }
}
