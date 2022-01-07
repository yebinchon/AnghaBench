
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request {int transmit_me; int trans_id; int tx_count; TYPE_3__* base; int timeout_event; TYPE_1__* ns; } ;
struct TYPE_5__ {int global_timeout; } ;
struct TYPE_4__ {int choked; } ;


 int ASSERT_LOCKED (TYPE_3__*) ;
 int ASSERT_VALID_REQUEST (struct request*) ;
 int EVDNS_LOG_DEBUG ;
 int EVDNS_LOG_WARN ;
 int EVUTIL_ASSERT (int) ;
 int evdns_request_transmit_to (struct request*,TYPE_1__*) ;
 int evtimer_add (int *,int *) ;
 int log (int ,char*,struct request*,...) ;
 int nameserver_write_waiting (TYPE_1__*,int) ;

__attribute__((used)) static int
evdns_request_transmit(struct request *req) {
 int retcode = 0, r;

 ASSERT_LOCKED(req->base);
 ASSERT_VALID_REQUEST(req);


 req->transmit_me = 1;
 EVUTIL_ASSERT(req->trans_id != 0xffff);

 if (!req->ns)
 {

  return 1;
 }

 if (req->ns->choked) {


  return 1;
 }

 r = evdns_request_transmit_to(req, req->ns);
 switch (r) {
 case 1:

  req->ns->choked = 1;
  nameserver_write_waiting(req->ns, 1);
  return 1;
 case 2:

  retcode = 1;


 default:

  log(EVDNS_LOG_DEBUG,
      "Setting timeout for request %p, sent to nameserver %p", req, req->ns);
  if (evtimer_add(&req->timeout_event, &req->base->global_timeout) < 0) {
   log(EVDNS_LOG_WARN,
        "Error from libevent when adding timer for request %p",
       req);

  }
  req->tx_count++;
  req->transmit_me = 0;
  return retcode;
 }
}
