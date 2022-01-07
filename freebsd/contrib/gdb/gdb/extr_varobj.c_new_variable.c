
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int index; int num_children; scalar_t__ updated; int * root; scalar_t__ format; int * children; int * parent; scalar_t__ error; int * value; int * type; int * obj_name; int * name; } ;


 scalar_t__ xmalloc (int) ;

__attribute__((used)) static struct varobj *
new_variable (void)
{
  struct varobj *var;

  var = (struct varobj *) xmalloc (sizeof (struct varobj));
  var->name = ((void*)0);
  var->obj_name = ((void*)0);
  var->index = -1;
  var->type = ((void*)0);
  var->value = ((void*)0);
  var->error = 0;
  var->num_children = -1;
  var->parent = ((void*)0);
  var->children = ((void*)0);
  var->format = 0;
  var->root = ((void*)0);
  var->updated = 0;

  return var;
}
