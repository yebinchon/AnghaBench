
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {struct addrinfo* ai_next; } ;


 int free (struct addrinfo*) ;

void
freeaddrinfo(struct addrinfo *ai)
{
 struct addrinfo *next;

 for(; ai != ((void*)0);) {
  next = ai->ai_next;
  free(ai);
  ai = next;
 }
}
