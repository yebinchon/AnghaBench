
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server_request {int dummy; } ;
struct evdns_server_request {int dummy; } ;


 struct server_request* TO_SERVER_REQUEST (struct evdns_server_request*) ;
 int server_request_free (struct server_request*) ;

int
evdns_server_request_drop(struct evdns_server_request *req_)
{
 struct server_request *req = TO_SERVER_REQUEST(req_);
 server_request_free(req);
 return 0;
}
