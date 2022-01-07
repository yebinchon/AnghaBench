
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_diff_callbacks3_t ;
typedef int svn_wc_context_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_boolean_t ;
struct diff_callbacks3_wrapper_baton {int anchor_abspath; int anchor; void* baton; int const* callbacks3; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 struct diff_callbacks3_wrapper_baton* apr_palloc (int *,int) ;
 int diff_callbacks3_wrapper ;
 int svn_dirent_join (int ,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc__adm_access_abspath (int *) ;
 int * svn_wc__adm_get_db (int *) ;
 int svn_wc__context_create_with_db (int **,int *,int *,int *) ;
 int svn_wc_adm_access_path (int *) ;
 int svn_wc_context_destroy (int *) ;
 int svn_wc_diff6 (int *,int ,int *,struct diff_callbacks3_wrapper_baton*,int ,int ,int ,int ,int const*,int *,int *,int *) ;

svn_error_t *
svn_wc_diff5(svn_wc_adm_access_t *anchor,
             const char *target,
             const svn_wc_diff_callbacks3_t *callbacks,
             void *callback_baton,
             svn_depth_t depth,
             svn_boolean_t ignore_ancestry,
             const apr_array_header_t *changelist_filter,
             apr_pool_t *pool)
{
  struct diff_callbacks3_wrapper_baton *b = apr_palloc(pool, sizeof(*b));
  svn_wc_context_t *wc_ctx;
  svn_wc__db_t *db = svn_wc__adm_get_db(anchor);

  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0), db, pool));

  b->callbacks3 = callbacks;
  b->baton = callback_baton;
  b->anchor = svn_wc_adm_access_path(anchor);
  b->anchor_abspath = svn_wc__adm_access_abspath(anchor);

  SVN_ERR(svn_wc_diff6(wc_ctx,
                       svn_dirent_join(b->anchor_abspath, target, pool),
                       &diff_callbacks3_wrapper,
                       b,
                       depth,
                       ignore_ancestry,
                       FALSE,
                       FALSE,
                       changelist_filter,
                       ((void*)0), ((void*)0),
                       pool));

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
