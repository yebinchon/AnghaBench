
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int int64_t ;


 int ucl_object_toint_safe (int const*,int *) ;

int64_t
ucl_object_toint (const ucl_object_t *obj)
{
 int64_t result = 0;

 ucl_object_toint_safe (obj, &result);
 return result;
}
