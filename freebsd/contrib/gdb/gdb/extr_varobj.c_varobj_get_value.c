
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;


 char* my_value_of_variable (struct varobj*) ;

char *
varobj_get_value (struct varobj *var)
{
  return my_value_of_variable (var);
}
