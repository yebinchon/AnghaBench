
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int s6_addr; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;




 int memcmp (int ,int ,int) ;

__attribute__((used)) static bool cmp_address(const struct sockaddr *s1,
   const struct sockaddr *s2)
{
 if (s1->sa_family != s2->sa_family)
  return 0;

 switch (s1->sa_family) {
 case 129:
  return ((struct sockaddr_in *)s1)->sin_addr.s_addr ==
         ((struct sockaddr_in *)s2)->sin_addr.s_addr;
 case 128:
  return !memcmp(
   ((struct sockaddr_in6 *)s1)->sin6_addr.s6_addr,
   ((struct sockaddr_in6 *)s2)->sin6_addr.s6_addr,
   sizeof(((struct sockaddr_in6 *)s1)->sin6_addr.s6_addr));
 default:
  return 0;
 }
}
