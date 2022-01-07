
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waiting_tcp {struct waiting_tcp* next_waiting; } ;
struct outside_network {struct waiting_tcp* tcp_wait_last; struct waiting_tcp* tcp_wait_first; } ;



__attribute__((used)) static void
waiting_list_remove(struct outside_network* outnet, struct waiting_tcp* w)
{
 struct waiting_tcp* p = outnet->tcp_wait_first, *prev = ((void*)0);
 while(p) {
  if(p == w) {

   if(prev)
    prev->next_waiting = w->next_waiting;
   else outnet->tcp_wait_first = w->next_waiting;
   if(outnet->tcp_wait_last == w)
    outnet->tcp_wait_last = prev;
   return;
  }
  prev = p;
  p = p->next_waiting;
 }
}
