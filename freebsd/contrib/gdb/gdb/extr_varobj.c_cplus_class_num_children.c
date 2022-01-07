
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_FIELD_PRIVATE (struct type*,int) ;
 scalar_t__ TYPE_FIELD_PROTECTED (struct type*,int) ;
 int TYPE_NFIELDS (struct type*) ;
 int TYPE_N_BASECLASSES (struct type*) ;
 struct type* TYPE_VPTR_BASETYPE (struct type*) ;
 int TYPE_VPTR_FIELDNO (struct type*) ;
 size_t v_private ;
 size_t v_protected ;
 size_t v_public ;

__attribute__((used)) static void
cplus_class_num_children (struct type *type, int children[3])
{
  int i;

  children[v_public] = 0;
  children[v_private] = 0;
  children[v_protected] = 0;

  for (i = TYPE_N_BASECLASSES (type); i < TYPE_NFIELDS (type); i++)
    {

      if (TYPE_VPTR_BASETYPE (type) == type && TYPE_VPTR_FIELDNO (type) == i)
 continue;

      if (TYPE_FIELD_PROTECTED (type, i))
 children[v_protected]++;
      else if (TYPE_FIELD_PRIVATE (type, i))
 children[v_private]++;
      else
 children[v_public]++;
    }
}
