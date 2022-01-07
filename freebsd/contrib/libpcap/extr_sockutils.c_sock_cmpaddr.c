
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;


 scalar_t__ AF_INET ;
 scalar_t__ memcmp (int *,int *,int) ;

int sock_cmpaddr(struct sockaddr_storage *first, struct sockaddr_storage *second)
{
 if (first->ss_family == second->ss_family)
 {
  if (first->ss_family == AF_INET)
  {
   if (memcmp(&(((struct sockaddr_in *) first)->sin_addr),
    &(((struct sockaddr_in *) second)->sin_addr),
    sizeof(struct in_addr)) == 0)
    return 0;
  }
  else
  {
   if (memcmp(&(((struct sockaddr_in6 *) first)->sin6_addr),
    &(((struct sockaddr_in6 *) second)->sin6_addr),
    sizeof(struct in6_addr)) == 0)
    return 0;
  }
 }

 return -1;
}
