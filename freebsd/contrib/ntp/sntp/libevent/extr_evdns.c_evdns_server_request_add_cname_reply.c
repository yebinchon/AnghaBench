
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_server_request {int dummy; } ;


 int CLASS_INET ;
 int EVDNS_ANSWER_SECTION ;
 int TYPE_CNAME ;
 int evdns_server_request_add_reply (struct evdns_server_request*,int ,char const*,int ,int ,int,int,int,char const*) ;

int
evdns_server_request_add_cname_reply(struct evdns_server_request *req, const char *name, const char *cname, int ttl)
{
 return evdns_server_request_add_reply(
    req, EVDNS_ANSWER_SECTION, name, TYPE_CNAME, CLASS_INET,
    ttl, -1, 1, cname);
}
