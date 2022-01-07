
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpstack {char* name; struct cpstack* next; } ;


 int xfree (struct cpstack*) ;

__attribute__((used)) static char *
cppop (struct cpstack **pstack)
{
  struct cpstack *s;
  char *v;

  if ((*pstack)->name == ((void*)0) && (*pstack)->next == ((void*)0))
    return ((void*)0);

  s = *pstack;
  v = s->name;
  *pstack = (*pstack)->next;
  xfree (s);

  return v;
}
