
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waiting_tcp {scalar_t__ next_waiting; int * pkt; } ;
struct serviced_query {scalar_t__ status; int node; int outnet; scalar_t__ pending; } ;
struct pending_tcp {int dummy; } ;
struct pending {scalar_t__ pc; } ;


 int decommission_pending_tcp (int ,struct pending_tcp*) ;
 int outnet_send_wait_udp (int ) ;
 int pending_delete (int ,struct pending*) ;
 int portcomm_loweruse (int ,scalar_t__) ;
 int serviced_node_del (int *,int *) ;
 scalar_t__ serviced_query_UDP ;
 scalar_t__ serviced_query_UDP_EDNS ;
 scalar_t__ serviced_query_UDP_EDNS_FRAG ;
 scalar_t__ serviced_query_UDP_EDNS_fallback ;
 int waiting_list_remove (int ,struct waiting_tcp*) ;
 int waiting_tcp_delete (struct waiting_tcp*) ;

__attribute__((used)) static void
serviced_delete(struct serviced_query* sq)
{
 if(sq->pending) {

  if(sq->status == serviced_query_UDP_EDNS ||
   sq->status == serviced_query_UDP ||
   sq->status == serviced_query_UDP_EDNS_FRAG ||
   sq->status == serviced_query_UDP_EDNS_fallback) {
   struct pending* p = (struct pending*)sq->pending;
   if(p->pc)
    portcomm_loweruse(sq->outnet, p->pc);
   pending_delete(sq->outnet, p);


   outnet_send_wait_udp(sq->outnet);
  } else {
   struct waiting_tcp* p = (struct waiting_tcp*)
    sq->pending;
   if(p->pkt == ((void*)0)) {
    decommission_pending_tcp(sq->outnet,
     (struct pending_tcp*)p->next_waiting);
   } else {
    waiting_list_remove(sq->outnet, p);
    waiting_tcp_delete(p);
   }
  }
 }

 serviced_node_del(&sq->node, ((void*)0));
}
