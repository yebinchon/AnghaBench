
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {struct addrinfo* ai_addr; struct addrinfo* ai_canonname; } ;


 int free (struct addrinfo*) ;

void
freeaddrinfo(struct addrinfo *ai)
{
 if (ai->ai_canonname != ((void*)0))
 {
  free(ai->ai_canonname);
  ai->ai_canonname = ((void*)0);
 }
 if (ai->ai_addr != ((void*)0))
 {
  free(ai->ai_addr);
  ai->ai_addr = ((void*)0);
 }
 free(ai);
 ai = ((void*)0);
}
