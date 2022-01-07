
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* name; } ;


 struct option* optiontab ;
 scalar_t__ strcasecmp (char const*,char const*) ;

struct option *
getoption(const char *name)
{
 const char *p;
 struct option *c;

 if (name == ((void*)0))
  return (((void*)0));
 for (c = optiontab; (p = c->name) != ((void*)0); c++) {
  if (strcasecmp(p, name) == 0)
   return (c);
 }
 return (((void*)0));
}
