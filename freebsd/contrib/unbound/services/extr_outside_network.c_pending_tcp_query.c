
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef unsigned int uint16_t ;
struct waiting_tcp {struct waiting_tcp* next_waiting; scalar_t__ pkt_len; int * pkt; int timer; int tls_auth_name; int ssl_upstream; void* cb_arg; int * cb; TYPE_1__* outnet; int addrlen; int addr; } ;
struct timeval {int tv_sec; int tv_usec; } ;
struct serviced_query {TYPE_1__* outnet; int zonelen; int zone; int addr; int tls_auth_name; int ssl_upstream; int addrlen; } ;
struct pending_tcp {int dummy; } ;
typedef int sldns_buffer ;
typedef int comm_point_callback_type ;
struct TYPE_4__ {scalar_t__ log_forwarder_query_messages; scalar_t__ log_resolver_query_messages; } ;
struct TYPE_3__ {struct waiting_tcp* tcp_wait_last; struct waiting_tcp* tcp_wait_first; TYPE_2__* dtenv; int rnd; int base; struct pending_tcp* tcp_free; } ;


 int LDNS_ID_SET (int ,unsigned int) ;
 int comm_tcp ;
 int comm_timer_create (int ,int ,struct waiting_tcp*) ;
 int comm_timer_set (int ,struct timeval*) ;
 int dt_msg_send_outside_query (TYPE_2__*,int *,int ,int ,int ,int *) ;
 int free (struct waiting_tcp*) ;
 scalar_t__ malloc (scalar_t__) ;
 int memcpy (int *,int *,int ) ;
 int memmove (int *,int ,scalar_t__) ;
 int outnet_tcp_take_into_use (struct waiting_tcp*,int ,scalar_t__) ;
 int outnet_tcptimer ;
 int sldns_buffer_begin (int *) ;
 scalar_t__ sldns_buffer_limit (int *) ;
 scalar_t__ ub_random (int ) ;
 int waiting_tcp_delete (struct waiting_tcp*) ;

struct waiting_tcp*
pending_tcp_query(struct serviced_query* sq, sldns_buffer* packet,
 int timeout, comm_point_callback_type* callback, void* callback_arg)
{
 struct pending_tcp* pend = sq->outnet->tcp_free;
 struct waiting_tcp* w;
 struct timeval tv;
 uint16_t id;

 w = (struct waiting_tcp*)malloc(sizeof(struct waiting_tcp)
  + (pend?0:sldns_buffer_limit(packet)));
 if(!w) {
  return ((void*)0);
 }
 if(!(w->timer = comm_timer_create(sq->outnet->base, outnet_tcptimer, w))) {
  free(w);
  return ((void*)0);
 }
 w->pkt = ((void*)0);
 w->pkt_len = 0;
 id = ((unsigned)ub_random(sq->outnet->rnd)>>8) & 0xffff;
 LDNS_ID_SET(sldns_buffer_begin(packet), id);
 memcpy(&w->addr, &sq->addr, sq->addrlen);
 w->addrlen = sq->addrlen;
 w->outnet = sq->outnet;
 w->cb = callback;
 w->cb_arg = callback_arg;
 w->ssl_upstream = sq->ssl_upstream;
 w->tls_auth_name = sq->tls_auth_name;

 tv.tv_sec = timeout/1000;
 tv.tv_usec = (timeout%1000)*1000;

 comm_timer_set(w->timer, &tv);
 if(pend) {

  if(!outnet_tcp_take_into_use(w, sldns_buffer_begin(packet),
   sldns_buffer_limit(packet))) {
   waiting_tcp_delete(w);
   return ((void*)0);
  }







 } else {

  w->pkt = (uint8_t*)w + sizeof(struct waiting_tcp);
  w->pkt_len = sldns_buffer_limit(packet);
  memmove(w->pkt, sldns_buffer_begin(packet), w->pkt_len);
  w->next_waiting = ((void*)0);
  if(sq->outnet->tcp_wait_last)
   sq->outnet->tcp_wait_last->next_waiting = w;
  else sq->outnet->tcp_wait_first = w;
  sq->outnet->tcp_wait_last = w;
 }
 return w;
}
