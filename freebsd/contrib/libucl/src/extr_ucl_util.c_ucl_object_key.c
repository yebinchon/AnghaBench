
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 char const* ucl_copy_key_trash (int const*) ;

const char *
ucl_object_key (const ucl_object_t *obj)
{
 return ucl_copy_key_trash (obj);
}
