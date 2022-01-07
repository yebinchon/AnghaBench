
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key; } ;
struct pending {struct pending* pkt; scalar_t__ timer; TYPE_1__ node; struct pending* next_waiting; } ;
struct outside_network {int pending; struct pending* udp_wait_last; struct pending* udp_wait_first; } ;


 int comm_timer_delete (scalar_t__) ;
 int free (struct pending*) ;
 int log_assert (int) ;
 int rbtree_delete (int ,int ) ;

void
pending_delete(struct outside_network* outnet, struct pending* p)
{
 if(!p)
  return;
 if(outnet && outnet->udp_wait_first &&
  (p->next_waiting || p == outnet->udp_wait_last) ) {

  struct pending* prev = ((void*)0), *x = outnet->udp_wait_first;
  while(x && x != p) {
   prev = x;
   x = x->next_waiting;
  }
  if(x) {
   log_assert(x == p);
   if(prev)
    prev->next_waiting = p->next_waiting;
   else outnet->udp_wait_first = p->next_waiting;
   if(outnet->udp_wait_last == p)
    outnet->udp_wait_last = prev;
  }
 }
 if(outnet) {
  (void)rbtree_delete(outnet->pending, p->node.key);
 }
 if(p->timer)
  comm_timer_delete(p->timer);
 free(p->pkt);
 free(p);
}
