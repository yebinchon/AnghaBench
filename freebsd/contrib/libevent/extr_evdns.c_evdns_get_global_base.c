
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_base {int dummy; } ;


 struct evdns_base* current_base ;

struct evdns_base *
evdns_get_global_base(void)
{
 return current_base;
}
