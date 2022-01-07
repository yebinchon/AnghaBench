
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 int ucl_object_tolstring_safe (int const*,char const**,size_t*) ;

const char *
ucl_object_tolstring (const ucl_object_t *obj, size_t *tlen)
{
 const char *result = ((void*)0);

 ucl_object_tolstring_safe (obj, &result, tlen);
 return result;
}
