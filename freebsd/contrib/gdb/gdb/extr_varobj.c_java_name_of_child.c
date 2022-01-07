
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;


 char* cplus_name_of_child (struct varobj*,int) ;

__attribute__((used)) static char *
java_name_of_child (struct varobj *parent, int index)
{
  char *name, *p;

  name = cplus_name_of_child (parent, index);

  p = name;

  while (*p != '\000')
    {
      if (*p == '.')
 *p = '-';
      p++;
    }

  return name;
}
