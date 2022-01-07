
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct hostent {int * h_addr_list; } ;


 int AF_INET6 ;
 struct hostent* gethostbyname2 (char*,int ) ;
 int inet_pton (int ,char*,struct in6_addr*) ;
 int memcpy (struct in6_addr*,int ,int) ;

__attribute__((used)) static int
lookup_host6 (char *host, struct in6_addr *ip6addr)
{
 struct hostent *he;

 if (!inet_pton(AF_INET6, host, ip6addr)) {
  if ((he = gethostbyname2(host, AF_INET6)) == ((void*)0))
   return(-1);
  memcpy(ip6addr, he->h_addr_list[0], sizeof( struct in6_addr));
 }
 return (0);
}
