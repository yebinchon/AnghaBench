
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_set (int *,int ,int ,int ) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 int apr_pstrmemdup (int *,void const*,int ) ;
 int svn_string_dup (void*,int *) ;

apr_hash_t *
svn_prop_hash_dup(const apr_hash_t *hash,
                  apr_pool_t *pool)
{
  apr_hash_index_t *hi;
  apr_hash_t *new_hash = apr_hash_make(pool);

  for (hi = apr_hash_first(pool, (apr_hash_t *)hash); hi;
       hi = apr_hash_next(hi))
    {
      const void *key;
      apr_ssize_t klen;
      void *prop;

      apr_hash_this(hi, &key, &klen, &prop);
      apr_hash_set(new_hash, apr_pstrmemdup(pool, key, klen), klen,
                   svn_string_dup(prop, pool));
    }
  return new_hash;
}
