
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ether_addr {unsigned int* octet; } ;


 int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;

struct ether_addr *
ether_aton_r(const char *a, struct ether_addr *e)
{
 int i;
 unsigned int o0, o1, o2, o3, o4, o5;

 i = sscanf(a, "%x:%x:%x:%x:%x:%x", &o0, &o1, &o2, &o3, &o4, &o5);
 if (i != 6)
  return (((void*)0));
 e->octet[0]=o0;
 e->octet[1]=o1;
 e->octet[2]=o2;
 e->octet[3]=o3;
 e->octet[4]=o4;
 e->octet[5]=o5;
 return (e);
}
