
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evdns_server_request {TYPE_1__** questions; int nquestions; } ;
typedef int ev_uint32_t ;
struct TYPE_2__ {int name; } ;


 int DNS_ERR_REFUSED ;
 int evdns_server_request_add_a_reply (struct evdns_server_request*,int ,int,int*,int) ;
 int evdns_server_request_respond (struct evdns_server_request*,int ) ;
 int tt_assert (int ) ;

__attribute__((used)) static void
gaic_server_cb(struct evdns_server_request *req, void *arg)
{
 ev_uint32_t answer = 0x7f000001;
 tt_assert(req->nquestions);
 evdns_server_request_add_a_reply(req, req->questions[0]->name, 1,
     &answer, 100);
 evdns_server_request_respond(req, 0);
 return;
end:
 evdns_server_request_respond(req, DNS_ERR_REFUSED);
}
