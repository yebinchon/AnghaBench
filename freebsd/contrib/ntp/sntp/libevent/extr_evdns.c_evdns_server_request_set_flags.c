
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct server_request {TYPE_1__ base; } ;
struct evdns_server_request {int dummy; } ;


 int EVDNS_FLAGS_AA ;
 int EVDNS_FLAGS_RD ;
 struct server_request* TO_SERVER_REQUEST (struct evdns_server_request*) ;

void
evdns_server_request_set_flags(struct evdns_server_request *exreq, int flags)
{
 struct server_request *req = TO_SERVER_REQUEST(exreq);
 req->base.flags &= ~(EVDNS_FLAGS_AA|EVDNS_FLAGS_RD);
 req->base.flags |= flags;
}
