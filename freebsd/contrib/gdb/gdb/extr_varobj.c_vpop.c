
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vstack {struct vstack* next; struct varobj* var; } ;
struct varobj {int dummy; } ;


 int xfree (struct vstack*) ;

__attribute__((used)) static struct varobj *
vpop (struct vstack **pstack)
{
  struct vstack *s;
  struct varobj *v;

  if ((*pstack)->var == ((void*)0) && (*pstack)->next == ((void*)0))
    return ((void*)0);

  s = *pstack;
  v = s->var;
  *pstack = (*pstack)->next;
  xfree (s);

  return v;
}
