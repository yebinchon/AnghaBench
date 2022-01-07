
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;


 scalar_t__ CPLUS_FAKE_CHILD (struct varobj*) ;
 char* c_value_of_variable (struct varobj*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
cplus_value_of_variable (struct varobj *var)
{



  if (CPLUS_FAKE_CHILD (var))
    return xstrdup ("");

  return c_value_of_variable (var);
}
