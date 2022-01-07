
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct addrinfo {int ai_family; scalar_t__ ai_addr; struct addrinfo* ai_next; } ;




 void* htons (int) ;

__attribute__((used)) static void
set_addrinfo_port(struct addrinfo *addrs, int port)
{
 struct addrinfo *addr;

 for (addr = addrs; addr != ((void*)0); addr = addr->ai_next) {
  switch (addr->ai_family) {
  case 129:
   ((struct sockaddr_in *)addr->ai_addr)->
       sin_port = htons(port);
   break;
  case 128:
   ((struct sockaddr_in6 *)addr->ai_addr)->
       sin6_port = htons(port);
   break;
  }
 }
}
