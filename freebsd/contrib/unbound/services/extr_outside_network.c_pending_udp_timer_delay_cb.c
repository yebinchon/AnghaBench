
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending {int pc; struct outside_network* outnet; } ;
struct outside_network {int dummy; } ;


 int VERB_ALGO ;
 int outnet_send_wait_udp (struct outside_network*) ;
 int pending_delete (struct outside_network*,struct pending*) ;
 int portcomm_loweruse (struct outside_network*,int ) ;
 int verbose (int ,char*) ;

void
pending_udp_timer_delay_cb(void* arg)
{
 struct pending* p = (struct pending*)arg;
 struct outside_network* outnet = p->outnet;
 verbose(VERB_ALGO, "timeout udp with delay");
 portcomm_loweruse(outnet, p->pc);
 pending_delete(outnet, p);
 outnet_send_wait_udp(outnet);
}
