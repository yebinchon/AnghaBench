
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;


 scalar_t__ CPLUS_FAKE_CHILD (struct varobj*) ;
 int c_variable_editable (struct varobj*) ;

__attribute__((used)) static int
cplus_variable_editable (struct varobj *var)
{
  if (CPLUS_FAKE_CHILD (var))
    return 0;

  return c_variable_editable (var);
}
