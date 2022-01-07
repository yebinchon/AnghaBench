
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ current_base ;
 scalar_t__ evdns_base_new (int *,int ) ;
 int evdns_base_set_option (scalar_t__,char const*,char const*) ;

int
evdns_set_option(const char *option, const char *val, int flags)
{
 if (!current_base)
  current_base = evdns_base_new(((void*)0), 0);
 return evdns_base_set_option(current_base, option, val);
}
