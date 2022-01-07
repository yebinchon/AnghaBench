
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;


 char* intoa (int ) ;

char *
inet_ntoa(struct in_addr ia)
{
 return (intoa(ia.s_addr));
}
