
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct pending_tcp {scalar_t__ id; TYPE_1__* query; } ;
struct outside_network {int dummy; } ;
struct comm_reply {int dummy; } ;
struct comm_point {int buffer; } ;
struct TYPE_2__ {int cb_arg; int (* cb ) (struct comm_point*,int ,int,struct comm_reply*) ;int addrlen; int addr; struct outside_network* outnet; } ;


 scalar_t__ LDNS_ID_WIRE (int ) ;
 int NETEVENT_CLOSED ;
 int NETEVENT_NOERROR ;
 int VERB_ALGO ;
 int VERB_QUERY ;
 int decommission_pending_tcp (struct outside_network*,struct pending_tcp*) ;
 int fptr_ok (int ) ;
 int fptr_whitelist_pending_tcp (int (*) (struct comm_point*,int ,int,struct comm_reply*)) ;
 int log_addr (int ,char*,int *,int ) ;
 int sldns_buffer_begin (int ) ;
 int sldns_buffer_limit (int ) ;
 int stub1 (struct comm_point*,int ,int,struct comm_reply*) ;
 int verbose (int ,char*,...) ;

int
outnet_tcp_cb(struct comm_point* c, void* arg, int error,
 struct comm_reply *reply_info)
{
 struct pending_tcp* pend = (struct pending_tcp*)arg;
 struct outside_network* outnet = pend->query->outnet;
 verbose(VERB_ALGO, "outnettcp cb");
 if(error != NETEVENT_NOERROR) {
  verbose(VERB_QUERY, "outnettcp got tcp error %d", error);

 } else {

  if(sldns_buffer_limit(c->buffer) < sizeof(uint16_t) ||
   LDNS_ID_WIRE(sldns_buffer_begin(c->buffer))!=pend->id) {
   log_addr(VERB_QUERY,
    "outnettcp: bad ID in reply, from:",
    &pend->query->addr, pend->query->addrlen);
   error = NETEVENT_CLOSED;
  }
 }
 fptr_ok(fptr_whitelist_pending_tcp(pend->query->cb));
 (void)(*pend->query->cb)(c, pend->query->cb_arg, error, reply_info);
 decommission_pending_tcp(outnet, pend);
 return 0;
}
