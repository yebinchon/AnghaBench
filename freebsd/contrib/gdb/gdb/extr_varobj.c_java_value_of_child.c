
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;
struct value {int dummy; } ;


 struct value* cplus_value_of_child (struct varobj*,int) ;

__attribute__((used)) static struct value *
java_value_of_child (struct varobj *parent, int index)
{
  return cplus_value_of_child (parent, index);
}
