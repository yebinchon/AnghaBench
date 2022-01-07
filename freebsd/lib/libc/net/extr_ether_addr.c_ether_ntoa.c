
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ether_addr {int dummy; } ;


 char* ether_ntoa_r (struct ether_addr const*,char*) ;

char *
ether_ntoa(const struct ether_addr *n)
{
 static char a[18];

 return (ether_ntoa_r(n, a));
}
