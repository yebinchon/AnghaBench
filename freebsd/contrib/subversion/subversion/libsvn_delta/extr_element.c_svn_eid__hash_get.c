
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key ;
typedef int apr_hash_t ;


 void* apr_hash_get (int *,int*,int) ;

void *
svn_eid__hash_get(apr_hash_t *ht,
                  int key)
{
  return apr_hash_get(ht, &key, sizeof(key));
}
