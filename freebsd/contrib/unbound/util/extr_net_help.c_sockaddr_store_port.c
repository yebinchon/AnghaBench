
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
typedef int socklen_t ;
typedef void* in_port_t ;


 scalar_t__ addr_is_ip6 (struct sockaddr_storage*,int ) ;
 scalar_t__ htons (int ) ;

void
sockaddr_store_port(struct sockaddr_storage* addr, socklen_t addrlen, int port)
{
 if(addr_is_ip6(addr, addrlen)) {
  struct sockaddr_in6* sa = (struct sockaddr_in6*)addr;
  sa->sin6_port = (in_port_t)htons((uint16_t)port);
 } else {
  struct sockaddr_in* sa = (struct sockaddr_in*)addr;
  sa->sin_port = (in_port_t)htons((uint16_t)port);
 }
}
