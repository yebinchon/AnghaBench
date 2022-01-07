
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct serviced_query {int last_rtt; scalar_t__ status; int * pending; scalar_t__ ssl_upstream; scalar_t__ tcp_upstream; TYPE_1__* outnet; int last_sent_time; int zonelen; int zone; int addrlen; int addr; } ;
typedef int sldns_buffer ;
struct TYPE_2__ {int * now_tv; int * now_secs; int infra; } ;


 int TCP_AUTH_QUERY_TIMEOUT ;
 int UNKNOWN_SERVER_NICENESS ;
 int infra_host (int ,int *,int ,int ,int ,int ,int*,int *,int*) ;
 int * pending_tcp_query (struct serviced_query*,int *,int,int ,struct serviced_query*) ;
 int serviced_encode (struct serviced_query*,int *,int) ;
 scalar_t__ serviced_query_TCP ;
 scalar_t__ serviced_query_TCP_EDNS ;
 int serviced_tcp_callback ;

__attribute__((used)) static int
serviced_tcp_send(struct serviced_query* sq, sldns_buffer* buff)
{
 int vs, rtt, timeout;
 uint8_t edns_lame_known;
 if(!infra_host(sq->outnet->infra, &sq->addr, sq->addrlen, sq->zone,
  sq->zonelen, *sq->outnet->now_secs, &vs, &edns_lame_known,
  &rtt))
  return 0;
 sq->last_rtt = rtt;
 if(vs != -1)
  sq->status = serviced_query_TCP_EDNS;
 else sq->status = serviced_query_TCP;
 serviced_encode(sq, buff, sq->status == serviced_query_TCP_EDNS);
 sq->last_sent_time = *sq->outnet->now_tv;
 if(sq->tcp_upstream || sq->ssl_upstream) {
  timeout = rtt;
  if(rtt >= UNKNOWN_SERVER_NICENESS && rtt < TCP_AUTH_QUERY_TIMEOUT)
   timeout = TCP_AUTH_QUERY_TIMEOUT;
 } else {
  timeout = TCP_AUTH_QUERY_TIMEOUT;
 }
 sq->pending = pending_tcp_query(sq, buff, timeout,
  serviced_tcp_callback, sq);
 return sq->pending != ((void*)0);
}
