
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evutil_addrinfo {int * ai_canonname; } ;
struct evdns_getaddrinfo_request {int * cname_result; } ;



__attribute__((used)) static void
add_cname_to_reply(struct evdns_getaddrinfo_request *data,
    struct evutil_addrinfo *ai)
{
 if (data->cname_result && ai) {
  ai->ai_canonname = data->cname_result;
  data->cname_result = ((void*)0);
 }
}
