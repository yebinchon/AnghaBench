
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {struct addrinfo* ai_next; int ai_addr; } ;


 int * nfshost ;
 struct addrinfo* nfshost_ai ;
 scalar_t__ sacmp (int ,int ) ;

int
namematch(struct addrinfo *ai)
{
 struct addrinfo *aip;

 if (nfshost == ((void*)0) || nfshost_ai == ((void*)0))
  return (1);

 while (ai != ((void*)0)) {
  aip = nfshost_ai;
  while (aip != ((void*)0)) {
   if (sacmp(ai->ai_addr, aip->ai_addr) == 0)
    return (1);
   aip = aip->ai_next;
  }
  ai = ai->ai_next;
 }

 return (0);
}
