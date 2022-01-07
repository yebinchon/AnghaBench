
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;


 char* cplus_name_of_variable (struct varobj*) ;

__attribute__((used)) static char *
java_name_of_variable (struct varobj *parent)
{
  char *p, *name;

  name = cplus_name_of_variable (parent);


  p = name;

  while (*p != '\000')
    {
      if (*p == '-')
 *p = '.';
      p++;
    }

  return name;
}
