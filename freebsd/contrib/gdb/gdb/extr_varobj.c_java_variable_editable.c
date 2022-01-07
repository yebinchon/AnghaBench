
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;


 int cplus_variable_editable (struct varobj*) ;

__attribute__((used)) static int
java_variable_editable (struct varobj *var)
{
  return cplus_variable_editable (var);
}
