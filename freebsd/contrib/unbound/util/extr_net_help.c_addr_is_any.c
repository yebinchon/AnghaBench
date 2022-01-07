
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; scalar_t__ sin_family; } ;
typedef scalar_t__ socklen_t ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ memcmp (void*,char*,int) ;

int addr_is_any(struct sockaddr_storage* addr, socklen_t addrlen)
{
 int af = (int)((struct sockaddr_in*)addr)->sin_family;
 void* sinaddr = &((struct sockaddr_in*)addr)->sin_addr;
 void* sin6addr = &((struct sockaddr_in6*)addr)->sin6_addr;
 if(af == AF_INET && addrlen>=(socklen_t)sizeof(struct sockaddr_in)
  && memcmp(sinaddr, "\000\000\000\000", 4) == 0)
  return 1;
 else if(af==AF_INET6 && addrlen>=(socklen_t)sizeof(struct sockaddr_in6)
  && memcmp(sin6addr, "\000\000\000\000\000\000\000\000"
  "\000\000\000\000\000\000\000\000", 16) == 0)
  return 1;
 return 0;
}
