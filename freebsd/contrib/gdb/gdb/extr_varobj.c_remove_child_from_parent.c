
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj_child {struct varobj_child* next; struct varobj* child; } ;
struct varobj {struct varobj_child* children; } ;



__attribute__((used)) static void
remove_child_from_parent (struct varobj *parent, struct varobj *child)
{
  struct varobj_child *vc, *prev;


  prev = ((void*)0);
  for (vc = parent->children; vc != ((void*)0);)
    {
      if (vc->child == child)
 break;
      prev = vc;
      vc = vc->next;
    }

  if (prev == ((void*)0))
    parent->children = vc->next;
  else
    prev->next = vc->next;

}
