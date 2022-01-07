
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int name; } ;


 char* savestring (int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static char *
c_name_of_variable (struct varobj *parent)
{
  return savestring (parent->name, strlen (parent->name));
}
