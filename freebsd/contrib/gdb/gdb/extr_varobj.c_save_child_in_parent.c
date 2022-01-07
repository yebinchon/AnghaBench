
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj_child {struct varobj* child; struct varobj_child* next; } ;
struct varobj {struct varobj_child* children; } ;


 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
save_child_in_parent (struct varobj *parent, struct varobj *child)
{
  struct varobj_child *vc;


  vc = parent->children;
  parent->children =
    (struct varobj_child *) xmalloc (sizeof (struct varobj_child));

  parent->children->next = vc;
  parent->children->child = child;
}
