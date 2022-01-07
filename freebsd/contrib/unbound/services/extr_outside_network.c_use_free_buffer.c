
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waiting_tcp {void* cb_arg; int (* cb ) (int *,void*,int ,int *) ;int pkt_len; int pkt; struct waiting_tcp* next_waiting; } ;
struct outside_network {struct waiting_tcp* tcp_wait_last; struct waiting_tcp* tcp_wait_first; int want_to_quit; scalar_t__ tcp_free; } ;
typedef int (* comm_point_callback_type ) (int *,void*,int ,int *) ;


 int NETEVENT_CLOSED ;
 int fptr_ok (int ) ;
 int fptr_whitelist_pending_tcp (int (*) (int *,void*,int ,int *)) ;
 int outnet_tcp_take_into_use (struct waiting_tcp*,int ,int ) ;
 int stub1 (int *,void*,int ,int *) ;
 int waiting_tcp_delete (struct waiting_tcp*) ;

__attribute__((used)) static void
use_free_buffer(struct outside_network* outnet)
{
 struct waiting_tcp* w;
 while(outnet->tcp_free && outnet->tcp_wait_first
  && !outnet->want_to_quit) {
  w = outnet->tcp_wait_first;
  outnet->tcp_wait_first = w->next_waiting;
  if(outnet->tcp_wait_last == w)
   outnet->tcp_wait_last = ((void*)0);
  if(!outnet_tcp_take_into_use(w, w->pkt, w->pkt_len)) {
   comm_point_callback_type* cb = w->cb;
   void* cb_arg = w->cb_arg;
   waiting_tcp_delete(w);
   fptr_ok(fptr_whitelist_pending_tcp(cb));
   (void)(*cb)(((void*)0), cb_arg, NETEVENT_CLOSED, ((void*)0));
  }
 }
}
