
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serviced_query {scalar_t__ status; int pending; TYPE_1__* outnet; int last_sent_time; } ;
typedef int sldns_buffer ;
struct TYPE_2__ {int * now_tv; } ;


 int NETEVENT_CLOSED ;
 int TCP_AUTH_QUERY_TIMEOUT ;
 int VERB_ALGO ;
 int pending_tcp_query (struct serviced_query*,int *,int ,int ,struct serviced_query*) ;
 int serviced_callbacks (struct serviced_query*,int ,int *,int *) ;
 int serviced_encode (struct serviced_query*,int *,int) ;
 scalar_t__ serviced_query_TCP_EDNS ;
 int serviced_tcp_callback ;
 int verbose (int ,char*,...) ;

__attribute__((used)) static void
serviced_tcp_initiate(struct serviced_query* sq, sldns_buffer* buff)
{
 verbose(VERB_ALGO, "initiate TCP query %s",
  sq->status==serviced_query_TCP_EDNS?"EDNS":"");
 serviced_encode(sq, buff, sq->status == serviced_query_TCP_EDNS);
 sq->last_sent_time = *sq->outnet->now_tv;
 sq->pending = pending_tcp_query(sq, buff, TCP_AUTH_QUERY_TIMEOUT,
  serviced_tcp_callback, sq);
 if(!sq->pending) {


  verbose(VERB_ALGO, "serviced_tcp_initiate: failed to send tcp query");
  serviced_callbacks(sq, NETEVENT_CLOSED, ((void*)0), ((void*)0));
 }
}
