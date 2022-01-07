
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
typedef int evdns_callback_type ;


 int current_base ;
 scalar_t__ evdns_base_resolve_reverse_ipv6 (int ,struct in6_addr const*,int,int ,void*) ;

int evdns_resolve_reverse_ipv6(const struct in6_addr *in, int flags, evdns_callback_type callback, void *ptr) {
 return evdns_base_resolve_reverse_ipv6(current_base, in, flags, callback, ptr)
  ? 0 : -1;
}
