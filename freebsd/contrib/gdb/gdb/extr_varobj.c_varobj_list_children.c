
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int num_children; } ;


 struct varobj* child_exists (struct varobj*,char*) ;
 struct varobj* create_child (struct varobj*,int,char*) ;
 char* name_of_child (struct varobj*,int) ;
 int number_of_children (struct varobj*) ;
 struct varobj** xmalloc (int) ;

int
varobj_list_children (struct varobj *var, struct varobj ***childlist)
{
  struct varobj *child;
  char *name;
  int i;


  if (childlist == ((void*)0))
    return -1;

  *childlist = ((void*)0);

  if (var->num_children == -1)
    var->num_children = number_of_children (var);


  *childlist = xmalloc ((var->num_children + 1) * sizeof (struct varobj *));

  for (i = 0; i < var->num_children; i++)
    {

      *((*childlist) + i) = ((void*)0);


      name = name_of_child (var, i);
      child = child_exists (var, name);
      if (child == ((void*)0))
 child = create_child (var, i, name);

      *((*childlist) + i) = child;
    }


  *((*childlist) + i) = ((void*)0);

  return var->num_children;
}
