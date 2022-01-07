
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vstack {struct vstack* next; struct varobj* var; } ;
struct varobj {int dummy; } ;


 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
vpush (struct vstack **pstack, struct varobj *var)
{
  struct vstack *s;

  s = (struct vstack *) xmalloc (sizeof (struct vstack));
  s->var = var;
  s->next = *pstack;
  *pstack = s;
}
