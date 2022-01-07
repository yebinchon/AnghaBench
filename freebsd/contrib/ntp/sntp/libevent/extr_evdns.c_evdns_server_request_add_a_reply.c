
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_server_request {int dummy; } ;


 int CLASS_INET ;
 int EVDNS_ANSWER_SECTION ;
 int TYPE_A ;
 int evdns_server_request_add_reply (struct evdns_server_request*,int ,char const*,int ,int ,int,int,int ,void const*) ;

int
evdns_server_request_add_a_reply(struct evdns_server_request *req, const char *name, int n, const void *addrs, int ttl)
{
 return evdns_server_request_add_reply(
    req, EVDNS_ANSWER_SECTION, name, TYPE_A, CLASS_INET,
    ttl, n*4, 0, addrs);
}
