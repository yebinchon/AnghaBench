
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {struct request* next; scalar_t__ transmit_me; } ;
struct evdns_base {int n_req_heads; struct request** req_heads; } ;


 int ASSERT_LOCKED (struct evdns_base*) ;
 int evdns_request_transmit (struct request*) ;

__attribute__((used)) static int
evdns_transmit(struct evdns_base *base) {
 char did_try_to_transmit = 0;
 int i;

 ASSERT_LOCKED(base);
 for (i = 0; i < base->n_req_heads; ++i) {
  if (base->req_heads[i]) {
   struct request *const started_at = base->req_heads[i], *req = started_at;

   do {
    if (req->transmit_me) {
     did_try_to_transmit = 1;
     evdns_request_transmit(req);
    }

    req = req->next;
   } while (req != started_at);
  }
 }

 return did_try_to_transmit;
}
