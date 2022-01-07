
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;


 char* c_name_of_variable (struct varobj*) ;

__attribute__((used)) static char *
cplus_name_of_variable (struct varobj *parent)
{
  return c_name_of_variable (parent);
}
