
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_canonname; struct addrinfo* ai_next; } ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int
check_addrinfo_for_name(struct addrinfo *ai, char const *name)
{
 struct addrinfo *ai2;

 for (ai2 = ai; ai2 != ((void*)0); ai2 = ai2->ai_next) {
  if (strcmp(ai2->ai_canonname, name) == 0)
   return (0);
 }

 return (-1);
}
