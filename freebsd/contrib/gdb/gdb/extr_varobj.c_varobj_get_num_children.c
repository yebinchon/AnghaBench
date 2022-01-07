
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int num_children; } ;


 int number_of_children (struct varobj*) ;

int
varobj_get_num_children (struct varobj *var)
{
  if (var->num_children == -1)
    var->num_children = number_of_children (var);

  return var->num_children;
}
