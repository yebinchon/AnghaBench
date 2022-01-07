
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj_child {struct varobj* child; struct varobj_child* next; } ;
struct varobj {int name; struct varobj_child* children; } ;


 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static struct varobj *
child_exists (struct varobj *var, char *name)
{
  struct varobj_child *vc;

  for (vc = var->children; vc != ((void*)0); vc = vc->next)
    {
      if (strcmp (vc->child->name, name) == 0)
 return vc->child;
    }

  return ((void*)0);
}
