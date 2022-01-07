
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pending {TYPE_1__* pc; TYPE_2__* timer; int (* cb ) (int ,int ,int ,int *) ;int cb_arg; struct outside_network* outnet; } ;
struct outside_network {int delay_tv; int udp_wait_first; scalar_t__ delayclose; } ;
struct TYPE_4__ {int * callback; } ;
struct TYPE_3__ {int cp; } ;


 int NETEVENT_TIMEOUT ;
 int VERB_ALGO ;
 int comm_timer_set (TYPE_2__*,int *) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_pending_udp (int (*) (int ,int ,int ,int *)) ;
 int outnet_send_wait_udp (struct outside_network*) ;
 int pending_delete (struct outside_network*,struct pending*) ;
 int pending_udp_timer_delay_cb ;
 int portcomm_loweruse (struct outside_network*,TYPE_1__*) ;
 int stub1 (int ,int ,int ,int *) ;
 int verbose (int ,char*) ;

void
pending_udp_timer_cb(void *arg)
{
 struct pending* p = (struct pending*)arg;
 struct outside_network* outnet = p->outnet;

 verbose(VERB_ALGO, "timeout udp");
 if(p->cb) {
  fptr_ok(fptr_whitelist_pending_udp(p->cb));
  (void)(*p->cb)(p->pc->cp, p->cb_arg, NETEVENT_TIMEOUT, ((void*)0));
 }




 if(outnet->delayclose && !outnet->udp_wait_first) {
  p->cb = ((void*)0);
  p->timer->callback = &pending_udp_timer_delay_cb;
  comm_timer_set(p->timer, &outnet->delay_tv);
  return;
 }
 portcomm_loweruse(outnet, p->pc);
 pending_delete(outnet, p);
 outnet_send_wait_udp(outnet);
}
