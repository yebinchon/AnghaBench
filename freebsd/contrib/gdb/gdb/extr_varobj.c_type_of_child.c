
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct varobj {int index; int parent; TYPE_2__* root; int * value; } ;
struct type {int dummy; } ;
struct TYPE_4__ {TYPE_1__* lang; } ;
struct TYPE_3__ {struct type* (* type_of_child ) (int ,int ) ;} ;


 struct type* VALUE_TYPE (int *) ;
 struct type* stub1 (int ,int ) ;

__attribute__((used)) static struct type *
type_of_child (struct varobj *var)
{



  if (var->value != ((void*)0))
    return VALUE_TYPE (var->value);


  return (*var->root->lang->type_of_child) (var->parent, var->index);
}
