
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct waiting_tcp {void* cb_arg; int (* cb ) (int *,void*,int ,int *) ;scalar_t__ next_waiting; scalar_t__ pkt; struct outside_network* outnet; } ;
struct pending_tcp {struct pending_tcp* next_free; int * query; TYPE_1__* c; } ;
struct outside_network {struct pending_tcp* tcp_free; } ;
typedef int (* comm_point_callback_type ) (int *,void*,int ,int *) ;
struct TYPE_2__ {int * ssl; } ;


 int NETEVENT_TIMEOUT ;
 int SSL_free (int *) ;
 int SSL_shutdown (int *) ;
 int comm_point_close (TYPE_1__*) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_pending_tcp (int (*) (int *,void*,int ,int *)) ;
 int stub1 (int *,void*,int ,int *) ;
 int use_free_buffer (struct outside_network*) ;
 int waiting_list_remove (struct outside_network*,struct waiting_tcp*) ;
 int waiting_tcp_delete (struct waiting_tcp*) ;

void
outnet_tcptimer(void* arg)
{
 struct waiting_tcp* w = (struct waiting_tcp*)arg;
 struct outside_network* outnet = w->outnet;
 comm_point_callback_type* cb;
 void* cb_arg;
 if(w->pkt) {

  waiting_list_remove(outnet, w);
 } else {

  struct pending_tcp* pend=(struct pending_tcp*)w->next_waiting;
  if(pend->c->ssl) {





  }
  comm_point_close(pend->c);
  pend->query = ((void*)0);
  pend->next_free = outnet->tcp_free;
  outnet->tcp_free = pend;
 }
 cb = w->cb;
 cb_arg = w->cb_arg;
 waiting_tcp_delete(w);
 fptr_ok(fptr_whitelist_pending_tcp(cb));
 (void)(*cb)(((void*)0), cb_arg, NETEVENT_TIMEOUT, ((void*)0));
 use_free_buffer(outnet);
}
