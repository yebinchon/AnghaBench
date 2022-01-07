
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_revision_status_t ;
typedef int svn_wc_context_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc_context_create (int **,int *,int *,int *) ;
 int svn_wc_context_destroy (int *) ;
 int svn_wc_revision_status2 (int **,int *,char const*,char const*,int ,int ,void*,int *,int *) ;

svn_error_t *
svn_wc_revision_status(svn_wc_revision_status_t **result_p,
                       const char *wc_path,
                       const char *trail_url,
                       svn_boolean_t committed,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;
  const char *local_abspath;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, wc_path, pool));
  SVN_ERR(svn_wc_context_create(&wc_ctx, ((void*)0) , pool, pool));

  SVN_ERR(svn_wc_revision_status2(result_p, wc_ctx, local_abspath, trail_url,
                                  committed, cancel_func, cancel_baton, pool,
                                  pool));

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
