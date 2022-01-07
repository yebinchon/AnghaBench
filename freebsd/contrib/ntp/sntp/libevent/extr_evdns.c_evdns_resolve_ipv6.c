
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evdns_callback_type ;


 int current_base ;
 scalar_t__ evdns_base_resolve_ipv6 (int ,char const*,int,int ,void*) ;

int evdns_resolve_ipv6(const char *name, int flags,
    evdns_callback_type callback, void *ptr) {
 return evdns_base_resolve_ipv6(current_base, name, flags, callback, ptr)
  ? 0 : -1;
}
