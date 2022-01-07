
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_rangelist_t ;
typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (int ) ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 int * apr_hash_this_val (int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_rangelist_merge2 (int *,int *,int *,int *) ;

svn_error_t *
svn_rangelist__merge_many(svn_rangelist_t *merged_rangelist,
                          svn_mergeinfo_t merge_history,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  if (apr_hash_count(merge_history))
    {
      apr_pool_t *iterpool = svn_pool_create(scratch_pool);
      apr_hash_index_t *hi;

      for (hi = apr_hash_first(scratch_pool, merge_history);
           hi;
           hi = apr_hash_next(hi))
        {
          svn_rangelist_t *subtree_rangelist = apr_hash_this_val(hi);

          svn_pool_clear(iterpool);
          SVN_ERR(svn_rangelist_merge2(merged_rangelist, subtree_rangelist,
                                       result_pool, iterpool));
        }
      svn_pool_destroy(iterpool);
    }
  return SVN_NO_ERROR;
}
