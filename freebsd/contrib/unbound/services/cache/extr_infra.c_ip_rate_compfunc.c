
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_rate_key {int addrlen; int addr; } ;


 int sockaddr_cmp_addr (int *,int ,int *,int ) ;

int ip_rate_compfunc(void* key1, void* key2)
{
 struct ip_rate_key* k1 = (struct ip_rate_key*)key1;
 struct ip_rate_key* k2 = (struct ip_rate_key*)key2;
 return sockaddr_cmp_addr(&k1->addr, k1->addrlen,
  &k2->addr, k2->addrlen);
}
