
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;


 int cplus_number_of_children (struct varobj*) ;

__attribute__((used)) static int
java_number_of_children (struct varobj *var)
{
  return cplus_number_of_children (var);
}
