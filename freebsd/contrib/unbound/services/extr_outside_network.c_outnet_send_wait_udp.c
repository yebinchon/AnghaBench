
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pending {int cb_arg; int (* cb ) (int ,int ,int ,int *) ;int timeout; scalar_t__ pkt_len; int * pkt; struct pending* next_waiting; } ;
struct outside_network {TYPE_1__* unused_fds; int udp_buff; int * udp_wait_last; struct pending* udp_wait_first; int want_to_quit; } ;
struct TYPE_2__ {int cp; } ;


 int NETEVENT_CLOSED ;
 int fptr_ok (int ) ;
 int fptr_whitelist_pending_udp (int (*) (int ,int ,int ,int *)) ;
 int free (int *) ;
 int pending_delete (struct outside_network*,struct pending*) ;
 int randomize_and_send_udp (struct pending*,int ,int ) ;
 int sldns_buffer_clear (int ) ;
 int sldns_buffer_flip (int ) ;
 int sldns_buffer_write (int ,int *,scalar_t__) ;
 int stub1 (int ,int ,int ,int *) ;

__attribute__((used)) static void
outnet_send_wait_udp(struct outside_network* outnet)
{
 struct pending* pend;

 while(outnet->udp_wait_first && outnet->unused_fds
  && !outnet->want_to_quit) {
  pend = outnet->udp_wait_first;
  outnet->udp_wait_first = pend->next_waiting;
  if(!pend->next_waiting) outnet->udp_wait_last = ((void*)0);
  sldns_buffer_clear(outnet->udp_buff);
  sldns_buffer_write(outnet->udp_buff, pend->pkt, pend->pkt_len);
  sldns_buffer_flip(outnet->udp_buff);
  free(pend->pkt);
  pend->pkt = ((void*)0);
  pend->pkt_len = 0;
  if(!randomize_and_send_udp(pend, outnet->udp_buff,
   pend->timeout)) {

   if(pend->cb) {
    fptr_ok(fptr_whitelist_pending_udp(pend->cb));
    (void)(*pend->cb)(outnet->unused_fds->cp, pend->cb_arg,
     NETEVENT_CLOSED, ((void*)0));
   }
   pending_delete(outnet, pend);
  }
 }
}
