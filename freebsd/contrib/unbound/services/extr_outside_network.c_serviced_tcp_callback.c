
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_6__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct serviced_query {scalar_t__ status; int addrlen; int addr; int last_rtt; int qtype; int zonelen; int zone; TYPE_1__* outnet; TYPE_3__ last_sent_time; scalar_t__ ssl_upstream; scalar_t__ tcp_upstream; int want_dnssec; int qbuflen; int qbuf; int * pending; } ;
struct comm_reply {int addrlen; int addr; struct comm_point* c; } ;
struct comm_point {int buffer; int type; } ;
struct TYPE_5__ {scalar_t__ log_forwarder_response_messages; scalar_t__ log_resolver_response_messages; } ;
struct TYPE_4__ {int infra; struct timeval* now_tv; int * now_secs; TYPE_2__* dtenv; } ;


 scalar_t__ LDNS_RCODE_FORMERR ;
 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RCODE_NOTIMPL ;
 scalar_t__ LDNS_RCODE_NXDOMAIN ;
 scalar_t__ LDNS_RCODE_WIRE (int ) ;
 scalar_t__ LDNS_RCODE_YXDOMAIN ;
 int NETEVENT_NOERROR ;
 int VERB_ALGO ;
 int VERB_QUERY ;
 int dt_msg_send_outside_response (TYPE_2__*,int *,int ,int ,int ,int ,int ,TYPE_3__*,struct timeval*,int ) ;
 int infra_edns_update (int ,int *,int ,int ,int ,int,int ) ;
 int infra_rtt_update (int ,int *,int ,int ,int ,int ,int,int ,int ) ;
 int infra_update_tcp_works (int ,int *,int ,int ,int ) ;
 int log_addr (int ,char*,int *,int ) ;
 int log_assert (int) ;
 int log_err (char*) ;
 int memcpy (int *,int *,int ) ;
 int serviced_callbacks (struct serviced_query*,int,struct comm_point*,struct comm_reply*) ;
 scalar_t__ serviced_query_TCP ;
 scalar_t__ serviced_query_TCP_EDNS ;
 scalar_t__ serviced_query_TCP_EDNS_fallback ;
 int serviced_tcp_initiate (struct serviced_query*,int ) ;
 int sldns_buffer_begin (int ) ;
 int verbose (int ,char*,int) ;

int
serviced_tcp_callback(struct comm_point* c, void* arg, int error,
        struct comm_reply* rep)
{
 struct serviced_query* sq = (struct serviced_query*)arg;
 struct comm_reply r2;
 sq->pending = ((void*)0);
 if(error != NETEVENT_NOERROR)
  log_addr(VERB_QUERY, "tcp error for address",
   &sq->addr, sq->addrlen);
 if(error==NETEVENT_NOERROR)
  infra_update_tcp_works(sq->outnet->infra, &sq->addr,
   sq->addrlen, sq->zone, sq->zonelen);
 if(error==NETEVENT_NOERROR && sq->status == serviced_query_TCP_EDNS &&
  (LDNS_RCODE_WIRE(sldns_buffer_begin(c->buffer)) ==
  LDNS_RCODE_FORMERR || LDNS_RCODE_WIRE(sldns_buffer_begin(
  c->buffer)) == LDNS_RCODE_NOTIMPL) ) {

  sq->status = serviced_query_TCP_EDNS_fallback;
  serviced_tcp_initiate(sq, c->buffer);
  return 0;
 } else if(error==NETEVENT_NOERROR &&
  sq->status == serviced_query_TCP_EDNS_fallback &&
   (LDNS_RCODE_WIRE(sldns_buffer_begin(c->buffer)) ==
   LDNS_RCODE_NOERROR || LDNS_RCODE_WIRE(
   sldns_buffer_begin(c->buffer)) == LDNS_RCODE_NXDOMAIN
   || LDNS_RCODE_WIRE(sldns_buffer_begin(c->buffer))
   == LDNS_RCODE_YXDOMAIN)) {



  if(!sq->want_dnssec)
    if(!infra_edns_update(sq->outnet->infra, &sq->addr,
   sq->addrlen, sq->zone, sq->zonelen, -1,
   *sq->outnet->now_secs))
   log_err("Out of memory caching no edns for host");
  sq->status = serviced_query_TCP;
 }
 if(sq->tcp_upstream || sq->ssl_upstream) {
     struct timeval now = *sq->outnet->now_tv;
     if(error!=NETEVENT_NOERROR) {
         if(!infra_rtt_update(sq->outnet->infra, &sq->addr,
      sq->addrlen, sq->zone, sq->zonelen, sq->qtype,
      -1, sq->last_rtt, (time_t)now.tv_sec))
      log_err("out of memory in TCP exponential backoff.");
     } else if(now.tv_sec > sq->last_sent_time.tv_sec ||
  (now.tv_sec == sq->last_sent_time.tv_sec &&
  now.tv_usec > sq->last_sent_time.tv_usec)) {

  int roundtime = ((int)(now.tv_sec - sq->last_sent_time.tv_sec))*1000
    + ((int)now.tv_usec - (int)sq->last_sent_time.tv_usec)/1000;
  verbose(VERB_ALGO, "measured TCP-time at %d msec", roundtime);
  log_assert(roundtime >= 0);


  if(roundtime < 60000) {
      if(!infra_rtt_update(sq->outnet->infra, &sq->addr,
   sq->addrlen, sq->zone, sq->zonelen, sq->qtype,
   roundtime, sq->last_rtt, (time_t)now.tv_sec))
   log_err("out of memory noting rtt.");
  }
     }
 }

 if(!rep) {

  rep = &r2;
  r2.c = c;
 }
 memcpy(&rep->addr, &sq->addr, sq->addrlen);
 rep->addrlen = sq->addrlen;
 serviced_callbacks(sq, error, c, rep);
 return 0;
}
