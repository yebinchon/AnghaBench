
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct addrinfo {int ai_addrlen; scalar_t__ ai_protocol; scalar_t__ ai_socktype; struct sockaddr* ai_addr; int ai_family; } ;


 int AF_INET ;
 scalar_t__ SOCK_STREAM ;
 struct addrinfo* malloc (int) ;
 int memset (struct addrinfo*,char,int) ;

__attribute__((used)) static struct
addrinfo *malloc_ai(int port, u_long addr, const struct addrinfo *hints)
{
 struct addrinfo *ai;

 ai = malloc(sizeof(*ai) + sizeof(struct sockaddr_in));
 if (ai == ((void*)0))
  return (((void*)0));

 memset(ai, '\0', sizeof(*ai) + sizeof(struct sockaddr_in));

 ai->ai_addr = (struct sockaddr *)(ai + 1);

 ai->ai_addrlen = sizeof(struct sockaddr_in);
 ai->ai_addr->sa_family = ai->ai_family = AF_INET;

 ((struct sockaddr_in *)(ai)->ai_addr)->sin_port = port;
 ((struct sockaddr_in *)(ai)->ai_addr)->sin_addr.s_addr = addr;


 if (hints->ai_socktype)
  ai->ai_socktype = hints->ai_socktype;
 else
  ai->ai_socktype = SOCK_STREAM;

 if (hints->ai_protocol)
  ai->ai_protocol = hints->ai_protocol;

 return (ai);
}
