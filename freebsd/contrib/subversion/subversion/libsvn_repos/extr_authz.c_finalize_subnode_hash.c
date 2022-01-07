
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int limited_rights_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this_val (int *) ;
 int finalize_tree (int ,int *,int *) ;

__attribute__((used)) static void
finalize_subnode_hash(apr_hash_t *hash,
                      limited_rights_t *sum,
                      apr_pool_t *scratch_pool)
{
  if (hash)
    {
      apr_hash_index_t *hi;
      for (hi = apr_hash_first(scratch_pool, hash);
           hi;
           hi = apr_hash_next(hi))
        finalize_tree(apr_hash_this_val(hi), sum, scratch_pool);
    }
}
