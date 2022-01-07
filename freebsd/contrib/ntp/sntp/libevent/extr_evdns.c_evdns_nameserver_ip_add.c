
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ current_base ;
 int evdns_base_nameserver_ip_add (scalar_t__,char const*) ;
 scalar_t__ evdns_base_new (int *,int ) ;

int
evdns_nameserver_ip_add(const char *ip_as_string) {
 if (!current_base)
  current_base = evdns_base_new(((void*)0), 0);
 return evdns_base_nameserver_ip_add(current_base, ip_as_string);
}
