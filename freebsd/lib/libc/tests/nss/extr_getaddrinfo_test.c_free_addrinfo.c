
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {struct addrinfo* ai_next; int ai_canonname; int ai_addr; } ;


 int free (int ) ;

__attribute__((used)) static void
free_addrinfo(struct addrinfo *ai)
{
 if (ai == ((void*)0))
  return;

 free(ai->ai_addr);
 free(ai->ai_canonname);
 free_addrinfo(ai->ai_next);
}
