
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; } ;
typedef scalar_t__ socklen_t ;


 scalar_t__ AF_INET6 ;

int
addr_is_ip6(struct sockaddr_storage* addr, socklen_t len)
{
 if(len == (socklen_t)sizeof(struct sockaddr_in6) &&
  ((struct sockaddr_in6*)addr)->sin6_family == AF_INET6)
  return 1;
 else return 0;
}
