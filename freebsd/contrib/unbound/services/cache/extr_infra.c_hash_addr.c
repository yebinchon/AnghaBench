
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_addr; int sin6_port; int sin6_family; } ;
struct sockaddr_in {int sin_addr; int sin_port; int sin_family; } ;
typedef int socklen_t ;
typedef int hashvalue_type ;


 int INET6_SIZE ;
 int INET_SIZE ;
 scalar_t__ addr_is_ip6 (struct sockaddr_storage*,int ) ;
 int hashlittle (int *,int,int) ;

__attribute__((used)) static hashvalue_type
hash_addr(struct sockaddr_storage* addr, socklen_t addrlen,
  int use_port)
{
 hashvalue_type h = 0xab;

 if(addr_is_ip6(addr, addrlen)) {
  struct sockaddr_in6* in6 = (struct sockaddr_in6*)addr;
  h = hashlittle(&in6->sin6_family, sizeof(in6->sin6_family), h);
  if(use_port){
   h = hashlittle(&in6->sin6_port, sizeof(in6->sin6_port), h);
  }
  h = hashlittle(&in6->sin6_addr, INET6_SIZE, h);
 } else {
  struct sockaddr_in* in = (struct sockaddr_in*)addr;
  h = hashlittle(&in->sin_family, sizeof(in->sin_family), h);
  if(use_port){
   h = hashlittle(&in->sin_port, sizeof(in->sin_port), h);
  }
  h = hashlittle(&in->sin_addr, INET_SIZE, h);
 }
 return h;
}
