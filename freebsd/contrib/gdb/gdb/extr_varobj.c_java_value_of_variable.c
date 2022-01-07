
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;


 char* cplus_value_of_variable (struct varobj*) ;

__attribute__((used)) static char *
java_value_of_variable (struct varobj *var)
{
  return cplus_value_of_variable (var);
}
