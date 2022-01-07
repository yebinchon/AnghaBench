
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {char* obj_name; } ;



char *
varobj_get_objname (struct varobj *var)
{
  return var->obj_name;
}
