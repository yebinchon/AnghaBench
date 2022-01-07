
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ evdns_getaddrinfo_fn ;


 scalar_t__ evdns_getaddrinfo_impl ;

void
evutil_set_evdns_getaddrinfo_fn_(evdns_getaddrinfo_fn fn)
{
 if (!evdns_getaddrinfo_impl)
  evdns_getaddrinfo_impl = fn;
}
