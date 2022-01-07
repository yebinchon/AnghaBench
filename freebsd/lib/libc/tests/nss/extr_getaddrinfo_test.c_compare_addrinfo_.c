
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {scalar_t__ ai_flags; scalar_t__ ai_family; scalar_t__ ai_socktype; scalar_t__ ai_protocol; scalar_t__ ai_addrlen; struct addrinfo* ai_next; int * ai_addr; int * ai_canonname; } ;


 scalar_t__ memcmp (int *,int *,scalar_t__) ;
 scalar_t__ strcmp (int *,int *) ;

__attribute__((used)) static int
compare_addrinfo_(struct addrinfo *ai1, struct addrinfo *ai2)
{

 if ((ai1 == ((void*)0)) || (ai2 == ((void*)0)))
  return (-1);

 if (ai1->ai_flags != ai2->ai_flags ||
     ai1->ai_family != ai2->ai_family ||
     ai1->ai_socktype != ai2->ai_socktype ||
     ai1->ai_protocol != ai2->ai_protocol ||
     ai1->ai_addrlen != ai2->ai_addrlen ||
     ((ai1->ai_addr == ((void*)0) || ai2->ai_addr == ((void*)0)) &&
      ai1->ai_addr != ai2->ai_addr) ||
     ((ai1->ai_canonname == ((void*)0) || ai2->ai_canonname == ((void*)0)) &&
      ai1->ai_canonname != ai2->ai_canonname))
  return (-1);

 if (ai1->ai_canonname != ((void*)0) &&
     strcmp(ai1->ai_canonname, ai2->ai_canonname) != 0)
  return (-1);

 if (ai1->ai_addr != ((void*)0) &&
     memcmp(ai1->ai_addr, ai2->ai_addr, ai1->ai_addrlen) != 0)
  return (-1);

 if (ai1->ai_next == ((void*)0) && ai2->ai_next == ((void*)0))
  return (0);
 else
  return (compare_addrinfo_(ai1->ai_next, ai2->ai_next));
}
