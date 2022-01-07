
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 int ucl_object_insert_key_common (int *,int *,char const*,size_t,int,int,int) ;

bool
ucl_object_insert_key (ucl_object_t *top, ucl_object_t *elt,
  const char *key, size_t keylen, bool copy_key)
{
 return ucl_object_insert_key_common (top, elt, key, keylen, copy_key, 0, 0);
}
