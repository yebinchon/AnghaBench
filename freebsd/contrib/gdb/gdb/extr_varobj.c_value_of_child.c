
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct varobj {TYPE_2__* root; } ;
struct value {int dummy; } ;
struct TYPE_4__ {TYPE_1__* lang; } ;
struct TYPE_3__ {struct value* (* value_of_child ) (struct varobj*,int) ;} ;


 scalar_t__ VALUE_LAZY (struct value*) ;
 int gdb_value_fetch_lazy (struct value*) ;
 struct value* stub1 (struct varobj*,int) ;

__attribute__((used)) static struct value *
value_of_child (struct varobj *parent, int index)
{
  struct value *value;

  value = (*parent->root->lang->value_of_child) (parent, index);


  if (value != ((void*)0) && VALUE_LAZY (value))
    {



      if (!gdb_value_fetch_lazy (value))
 value = ((void*)0);
    }

  return value;
}
