
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_base {int dummy; } ;


 struct evdns_base* current_base ;
 struct evdns_base* evdns_base_new (int *,int) ;

int
evdns_init(void)
{
 struct evdns_base *base = evdns_base_new(((void*)0), 1);
 if (base) {
  current_base = base;
  return 0;
 } else {
  return -1;
 }
}
