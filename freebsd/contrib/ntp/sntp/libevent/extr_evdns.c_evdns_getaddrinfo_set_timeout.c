
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_getaddrinfo_request {int timeout; } ;
struct evdns_base {int global_getaddrinfo_allow_skew; } ;


 int event_add (int *,int *) ;

__attribute__((used)) static int
evdns_getaddrinfo_set_timeout(struct evdns_base *evdns_base,
    struct evdns_getaddrinfo_request *data)
{
 return event_add(&data->timeout, &evdns_base->global_getaddrinfo_allow_skew);
}
