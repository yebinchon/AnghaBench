
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; struct addrinfo* ai_next; } ;


 int bind (int,int ,int ) ;
 struct addrinfo* fetch_resolve (char const*,int ,int) ;
 int fetch_syserr () ;
 int freeaddrinfo (struct addrinfo*) ;

int
fetch_bind(int sd, int af, const char *addr)
{
 struct addrinfo *cliai, *ai;
 int err;

 if ((cliai = fetch_resolve(addr, 0, af)) == ((void*)0))
  return (-1);
 for (ai = cliai; ai != ((void*)0); ai = ai->ai_next)
  if ((err = bind(sd, ai->ai_addr, ai->ai_addrlen)) == 0)
   break;
 if (err != 0)
  fetch_syserr();
 freeaddrinfo(cliai);
 return (err == 0 ? 0 : -1);
}
