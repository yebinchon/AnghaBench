
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ evdns_getaddrinfo_cancel_fn ;


 scalar_t__ evdns_getaddrinfo_cancel_impl ;

void
evutil_set_evdns_getaddrinfo_cancel_fn_(evdns_getaddrinfo_cancel_fn fn)
{
 if (!evdns_getaddrinfo_cancel_impl)
  evdns_getaddrinfo_cancel_impl = fn;
}
