
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key ;
typedef int apr_hash_t ;


 int apr_hash_pool_get (int *) ;
 int apr_hash_set (int *,int*,int,void const*) ;
 int* apr_pmemdup (int ,int*,int) ;

void
svn_eid__hash_set(apr_hash_t *ht,
                  int key,
                  const void *val)
{
  int *id_p = apr_pmemdup(apr_hash_pool_get(ht), &key, sizeof(key));

  apr_hash_set(ht, id_p, sizeof(key), val);
}
