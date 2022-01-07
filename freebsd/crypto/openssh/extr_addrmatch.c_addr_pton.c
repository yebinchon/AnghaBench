
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xaddr {int dummy; } ;
struct addrinfo {int ai_addrlen; int * ai_addr; int ai_flags; } ;
typedef int hints ;


 int AI_NUMERICHOST ;
 int addr_sa_to_xaddr (int *,int ,struct xaddr*) ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char const*,int *,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,char,int) ;

__attribute__((used)) static int
addr_pton(const char *p, struct xaddr *n)
{
 struct addrinfo hints, *ai = ((void*)0);
 int ret = -1;

 memset(&hints, '\0', sizeof(hints));
 hints.ai_flags = AI_NUMERICHOST;

 if (p == ((void*)0) || getaddrinfo(p, ((void*)0), &hints, &ai) != 0)
  goto out;
 if (ai == ((void*)0) || ai->ai_addr == ((void*)0))
  goto out;
 if (n != ((void*)0) && addr_sa_to_xaddr(ai->ai_addr, ai->ai_addrlen, n) == -1)
  goto out;

 ret = 0;
 out:
 if (ai != ((void*)0))
  freeaddrinfo(ai);
 return ret;
}
