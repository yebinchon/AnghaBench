
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;
struct value {int dummy; } ;


 struct value* c_value_of_root (struct varobj**) ;

__attribute__((used)) static struct value *
cplus_value_of_root (struct varobj **var_handle)
{
  return c_value_of_root (var_handle);
}
