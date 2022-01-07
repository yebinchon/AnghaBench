
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct sldns_buffer {int dummy; } ;
struct serviced_query {TYPE_2__* outnet; int addrlen; int addr; } ;
struct TYPE_3__ {struct pending* key; } ;
struct pending {int timeout; struct pending* next_waiting; int timer; int * pkt; int pkt_len; TYPE_1__ node; void* cb_arg; int * cb; int addr; int addrlen; struct serviced_query* sq; TYPE_2__* outnet; } ;
typedef int comm_point_callback_type ;
struct TYPE_4__ {struct pending* udp_wait_last; struct pending* udp_wait_first; int * unused_fds; int base; } ;


 int VERB_ALGO ;
 scalar_t__ calloc (int,int) ;
 int comm_timer_create (int ,int ,struct pending*) ;
 int comm_timer_delete (int ) ;
 int free (struct pending*) ;
 scalar_t__ memdup (int ,int ) ;
 int memmove (int *,int *,int ) ;
 int pending_delete (TYPE_2__*,struct pending*) ;
 int pending_udp_timer_cb ;
 int randomize_and_send_udp (struct pending*,struct sldns_buffer*,int) ;
 int sldns_buffer_begin (struct sldns_buffer*) ;
 int sldns_buffer_limit (struct sldns_buffer*) ;
 int verbose (int ,char*) ;

struct pending*
pending_udp_query(struct serviced_query* sq, struct sldns_buffer* packet,
 int timeout, comm_point_callback_type* cb, void* cb_arg)
{
 struct pending* pend = (struct pending*)calloc(1, sizeof(*pend));
 if(!pend) return ((void*)0);
 pend->outnet = sq->outnet;
 pend->sq = sq;
 pend->addrlen = sq->addrlen;
 memmove(&pend->addr, &sq->addr, sq->addrlen);
 pend->cb = cb;
 pend->cb_arg = cb_arg;
 pend->node.key = pend;
 pend->timer = comm_timer_create(sq->outnet->base, pending_udp_timer_cb,
  pend);
 if(!pend->timer) {
  free(pend);
  return ((void*)0);
 }

 if(sq->outnet->unused_fds == ((void*)0)) {

  verbose(VERB_ALGO, "no fds available, udp query waiting");
  pend->timeout = timeout;
  pend->pkt_len = sldns_buffer_limit(packet);
  pend->pkt = (uint8_t*)memdup(sldns_buffer_begin(packet),
   pend->pkt_len);
  if(!pend->pkt) {
   comm_timer_delete(pend->timer);
   free(pend);
   return ((void*)0);
  }

  if(sq->outnet->udp_wait_last)
   sq->outnet->udp_wait_last->next_waiting = pend;
  else
   sq->outnet->udp_wait_first = pend;
  sq->outnet->udp_wait_last = pend;
  return pend;
 }
 if(!randomize_and_send_udp(pend, packet, timeout)) {
  pending_delete(sq->outnet, pend);
  return ((void*)0);
 }
 return pend;
}
