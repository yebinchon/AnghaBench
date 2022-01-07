
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zero ;
struct sockaddr_in6 {int sin6_addr; } ;
struct addrinfo {scalar_t__ ai_family; scalar_t__ ai_addr; } ;


 scalar_t__ AF_INET6 ;
 int IN6_IS_ADDR_V4MAPPED (int *) ;
 int IPPROTO_IPV6 ;
 int IPV6_V6ONLY ;
 int setsockopt (int,int ,int ,int*,int) ;

__attribute__((used)) static int
allowv4mapped(int s, struct addrinfo *ai)
{
 struct sockaddr_in6 *s6;
 int zero = 0;

 if (ai->ai_family != AF_INET6)
  return 0;

 s6 = (void *)ai->ai_addr;

 if (!IN6_IS_ADDR_V4MAPPED(&s6->sin6_addr))
  return 0;
 return setsockopt(s, IPPROTO_IPV6, IPV6_V6ONLY, &zero, sizeof(zero));
}
