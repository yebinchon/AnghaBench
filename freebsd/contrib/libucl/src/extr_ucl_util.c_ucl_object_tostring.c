
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 int ucl_object_tostring_safe (int const*,char const**) ;

const char *
ucl_object_tostring (const ucl_object_t *obj)
{
 const char *result = ((void*)0);

 ucl_object_tostring_safe (obj, &result);
 return result;
}
