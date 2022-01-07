
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_status_func_t ;
typedef int svn_revnum_t ;
typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
struct old_status_func_cb_baton {void* original_baton; int original_func; } ;
typedef int apr_pool_t ;


 int FALSE ;
 struct old_status_func_cb_baton* apr_pcalloc (int *,int) ;
 int old_status_func_cb ;
 int * svn_client_status2 (int *,char const*,int *,int ,struct old_status_func_cb_baton*,int ,int ,int ,int ,int ,int *,int *) ;

svn_error_t *
svn_client_status(svn_revnum_t *result_rev,
                  const char *path,
                  svn_opt_revision_t *revision,
                  svn_wc_status_func_t status_func,
                  void *status_baton,
                  svn_boolean_t recurse,
                  svn_boolean_t get_all,
                  svn_boolean_t update,
                  svn_boolean_t no_ignore,
                  svn_client_ctx_t *ctx,
                  apr_pool_t *pool)
{
  struct old_status_func_cb_baton *b = apr_pcalloc(pool, sizeof(*b));
  b->original_func = status_func;
  b->original_baton = status_baton;

  return svn_client_status2(result_rev, path, revision,
                            old_status_func_cb, b,
                            recurse, get_all, update, no_ignore, FALSE,
                            ctx, pool);
}
