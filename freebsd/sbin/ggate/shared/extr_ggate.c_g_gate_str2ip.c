
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {scalar_t__ s_addr; } ;
struct hostent {scalar_t__ h_addr; } ;
typedef scalar_t__ in_addr_t ;


 scalar_t__ INADDR_NONE ;
 struct hostent* gethostbyname (char const*) ;
 scalar_t__ inet_addr (char const*) ;

in_addr_t
g_gate_str2ip(const char *str)
{
 struct hostent *hp;
 in_addr_t ip;

 ip = inet_addr(str);
 if (ip != INADDR_NONE) {

  return (ip);
 }

 hp = gethostbyname(str);
 if (hp == ((void*)0))
  return (INADDR_NONE);
 return (((struct in_addr *)(void *)hp->h_addr)->s_addr);
}
