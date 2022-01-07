
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct addrinfo {int ai_family; int ai_addrlen; scalar_t__ ai_addr; struct addrinfo* ai_next; } ;
typedef int socklen_t ;




 int MIN (int ,int ) ;
 int memcmp (char const*,void*,int ) ;

__attribute__((used)) static int
check_addrinfo_for_addr(struct addrinfo *ai, char const *addr,
 socklen_t addrlen, int af)
{
 struct addrinfo *ai2;

 for (ai2 = ai; ai2 != ((void*)0); ai2 = ai2->ai_next) {
  if (af != ai2->ai_family)
   continue;

  switch (af) {
  case 129:
   if (memcmp(addr,
       (void *)&((struct sockaddr_in *)ai2->ai_addr)->sin_addr,
       MIN(addrlen, ai2->ai_addrlen)) == 0)
    return (0);
   break;
  case 128:
   if (memcmp(addr,
       (void *)&((struct sockaddr_in6 *)ai2->ai_addr)->sin6_addr,
       MIN(addrlen, ai2->ai_addrlen)) == 0)
    return (0);
   break;
  default:
   break;
  }
 }

 return (-1);
}
