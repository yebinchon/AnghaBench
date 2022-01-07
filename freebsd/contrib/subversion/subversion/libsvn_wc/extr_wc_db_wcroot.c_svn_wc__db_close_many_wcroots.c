
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 scalar_t__ APR_SUCCESS ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int * apr_hash_this_val (int *) ;
 scalar_t__ apr_pool_cleanup_run (int *,int *,int ) ;
 int close_wcroot ;
 int * svn_error_wrap_apr (scalar_t__,int *) ;

svn_error_t *
svn_wc__db_close_many_wcroots(apr_hash_t *roots,
                              apr_pool_t *state_pool,
                              apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;

  for (hi = apr_hash_first(scratch_pool, roots); hi; hi = apr_hash_next(hi))
    {
      svn_wc__db_wcroot_t *wcroot = apr_hash_this_val(hi);
      apr_status_t result;

      result = apr_pool_cleanup_run(state_pool, wcroot, close_wcroot);
      if (result != APR_SUCCESS)
        return svn_error_wrap_apr(result, ((void*)0));
    }

  return SVN_NO_ERROR;
}
