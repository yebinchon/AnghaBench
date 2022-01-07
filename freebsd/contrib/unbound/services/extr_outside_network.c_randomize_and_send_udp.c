
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct sockaddr {int dummy; } ;
struct pending {TYPE_1__* sq; int addr; int timer; TYPE_2__* pc; int addrlen; } ;
struct outside_network {TYPE_3__* dtenv; int ip4_ifs; int num_ip4; int ip6_ifs; int num_ip6; } ;
typedef int sldns_buffer ;
struct TYPE_6__ {scalar_t__ log_forwarder_query_messages; scalar_t__ log_resolver_query_messages; } ;
struct TYPE_5__ {scalar_t__ cp; } ;
struct TYPE_4__ {int zonelen; int zone; struct outside_network* outnet; } ;


 scalar_t__ addr_is_ip6 (int *,int ) ;
 int comm_point_send_udp_msg (scalar_t__,int *,struct sockaddr*,int ) ;
 int comm_timer_set (int ,struct timeval*) ;
 int comm_udp ;
 int dt_msg_send_outside_query (TYPE_3__*,int *,int ,int ,int ,int *) ;
 int log_assert (int) ;
 int portcomm_loweruse (struct outside_network*,TYPE_2__*) ;
 int select_id (struct outside_network*,struct pending*,int *) ;
 int select_ifport (struct outside_network*,struct pending*,int ,int ) ;

__attribute__((used)) static int
randomize_and_send_udp(struct pending* pend, sldns_buffer* packet, int timeout)
{
 struct timeval tv;
 struct outside_network* outnet = pend->sq->outnet;


 if(!select_id(outnet, pend, packet)) {
  return 0;
 }


 if(addr_is_ip6(&pend->addr, pend->addrlen)) {
  if(!select_ifport(outnet, pend,
   outnet->num_ip6, outnet->ip6_ifs))
   return 0;
 } else {
  if(!select_ifport(outnet, pend,
   outnet->num_ip4, outnet->ip4_ifs))
   return 0;
 }
 log_assert(pend->pc && pend->pc->cp);


 if(!comm_point_send_udp_msg(pend->pc->cp, packet,
  (struct sockaddr*)&pend->addr, pend->addrlen)) {
  portcomm_loweruse(outnet, pend->pc);
  return 0;
 }




 tv.tv_sec = timeout/1000;
 tv.tv_usec = (timeout%1000)*1000;

 comm_timer_set(pend->timer, &tv);
 return 1;
}
