
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int time_t ;
struct serviced_query {int last_rtt; scalar_t__ status; int edns_lame_known; int pending; TYPE_1__* outnet; int last_sent_time; int zonelen; int zone; int addrlen; int addr; } ;
typedef int sldns_buffer ;
struct TYPE_2__ {int * now_tv; int infra; int * now_secs; } ;


 int VERB_ALGO ;
 int infra_host (int ,int *,int ,int ,int ,int ,int*,scalar_t__*,int*) ;
 int pending_udp_query (struct serviced_query*,int *,int,int ,struct serviced_query*) ;
 int serviced_encode (struct serviced_query*,int *,int) ;
 scalar_t__ serviced_initial ;
 scalar_t__ serviced_query_UDP ;
 scalar_t__ serviced_query_UDP_EDNS ;
 scalar_t__ serviced_query_UDP_EDNS_FRAG ;
 int serviced_udp_callback ;
 int verbose (int ,char*,int,...) ;

__attribute__((used)) static int
serviced_udp_send(struct serviced_query* sq, sldns_buffer* buff)
{
 int rtt, vs;
 uint8_t edns_lame_known;
 time_t now = *sq->outnet->now_secs;

 if(!infra_host(sq->outnet->infra, &sq->addr, sq->addrlen, sq->zone,
  sq->zonelen, now, &vs, &edns_lame_known, &rtt))
  return 0;
 sq->last_rtt = rtt;
 verbose(VERB_ALGO, "EDNS lookup known=%d vs=%d", edns_lame_known, vs);
 if(sq->status == serviced_initial) {
  if(vs != -1) {
   sq->status = serviced_query_UDP_EDNS;
  } else {
   sq->status = serviced_query_UDP;
  }
 }
 serviced_encode(sq, buff, (sq->status == serviced_query_UDP_EDNS) ||
  (sq->status == serviced_query_UDP_EDNS_FRAG));
 sq->last_sent_time = *sq->outnet->now_tv;
 sq->edns_lame_known = (int)edns_lame_known;
 verbose(VERB_ALGO, "serviced query UDP timeout=%d msec", rtt);
 sq->pending = pending_udp_query(sq, buff, rtt,
  serviced_udp_callback, sq);
 if(!sq->pending)
  return 0;
 return 1;
}
