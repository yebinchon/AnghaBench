
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 int ucl_object_toboolean_safe (int const*,int*) ;

bool
ucl_object_toboolean (const ucl_object_t *obj)
{
 bool result = 0;

 ucl_object_toboolean_safe (obj, &result);
 return result;
}
