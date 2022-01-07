
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {struct addrinfo* ai_next; } ;
typedef int FILE ;


 struct addrinfo* _gethtent (int **,char const*,struct addrinfo const*) ;

__attribute__((used)) static struct addrinfo *
_getht(FILE **hostf, const char *name, const struct addrinfo *pai,
     struct addrinfo *cur)
{
 struct addrinfo *p;

 while ((p = _gethtent(hostf, name, pai)) != ((void*)0)) {
  cur->ai_next = p;
  while (cur && cur->ai_next)
   cur = cur->ai_next;
 }
 return (cur);
}
