
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj_child {struct varobj_child* next; struct varobj* child; } ;
struct varobj {int * obj_name; int * parent; struct varobj_child* children; } ;
struct cpstack {int dummy; } ;


 int cppush (struct cpstack**,int ) ;
 int free_variable (struct varobj*) ;
 int remove_child_from_parent (int *,struct varobj*) ;
 int uninstall_variable (struct varobj*) ;
 int xfree (struct varobj_child*) ;
 int xstrdup (int *) ;

__attribute__((used)) static void
delete_variable_1 (struct cpstack **resultp, int *delcountp,
     struct varobj *var, int only_children_p,
     int remove_from_parent_p)
{
  struct varobj_child *vc;
  struct varobj_child *next;


  for (vc = var->children; vc != ((void*)0); vc = next)
    {
      if (!remove_from_parent_p)
 vc->child->parent = ((void*)0);
      delete_variable_1 (resultp, delcountp, vc->child, 0, only_children_p);
      next = vc->next;
      xfree (vc);
    }


  if (only_children_p)
    return;




  if (var->obj_name != ((void*)0))
    {
      cppush (resultp, xstrdup (var->obj_name));
      *delcountp = *delcountp + 1;
    }






  if ((remove_from_parent_p) && (var->parent != ((void*)0)))
    {
      remove_child_from_parent (var->parent, var);
    }

  if (var->obj_name != ((void*)0))
    uninstall_variable (var);


  free_variable (var);
}
