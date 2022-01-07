
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 int strlen (char const*) ;
 int const* ucl_object_lookup_len (int const*,char const*,int ) ;

const ucl_object_t *
ucl_object_lookup (const ucl_object_t *obj, const char *key)
{
 if (key == ((void*)0)) {
  return ((void*)0);
 }

 return ucl_object_lookup_len (obj, key, strlen (key));
}
