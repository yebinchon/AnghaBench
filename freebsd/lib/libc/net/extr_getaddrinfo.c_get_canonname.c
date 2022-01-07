
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_flags; int * ai_canonname; } ;


 int AI_CANONNAME ;
 int EAI_MEMORY ;
 int * strdup (char const*) ;

__attribute__((used)) static int
get_canonname(const struct addrinfo *pai, struct addrinfo *ai, const char *str)
{
 if ((pai->ai_flags & AI_CANONNAME) != 0) {
  ai->ai_canonname = strdup(str);
  if (ai->ai_canonname == ((void*)0))
   return EAI_MEMORY;
 }
 return 0;
}
