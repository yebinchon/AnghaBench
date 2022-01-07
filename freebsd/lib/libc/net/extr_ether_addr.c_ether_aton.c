
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ether_addr {int dummy; } ;


 struct ether_addr* ether_aton_r (char const*,struct ether_addr*) ;

struct ether_addr *
ether_aton(const char *a)
{
 static struct ether_addr e;

 return (ether_aton_r(a, &e));
}
