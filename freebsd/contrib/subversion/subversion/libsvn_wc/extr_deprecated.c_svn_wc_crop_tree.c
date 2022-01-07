
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_notify_func2_t ;
typedef int svn_wc_context_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int svn_depth_exclude ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc__adm_access_abspath (int *) ;
 int * svn_wc__adm_get_db (int *) ;
 int svn_wc__context_create_with_db (int **,int *,int *,int *) ;
 int svn_wc_context_destroy (int *) ;
 int svn_wc_crop_tree2 (int *,char const*,int ,int ,void*,int ,void*,int *) ;
 int svn_wc_exclude (int *,char const*,int ,void*,int ,void*,int *) ;

svn_error_t *
svn_wc_crop_tree(svn_wc_adm_access_t *anchor,
                 const char *target,
                 svn_depth_t depth,
                 svn_wc_notify_func2_t notify_func,
                 void *notify_baton,
                 svn_cancel_func_t cancel_func,
                 void *cancel_baton,
                 apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;
  svn_wc__db_t *db = svn_wc__adm_get_db(anchor);
  const char *local_abspath;

  local_abspath = svn_dirent_join(svn_wc__adm_access_abspath(anchor),
                                  target, pool);

  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0), db, pool));

  if (depth == svn_depth_exclude)
    {
      SVN_ERR(svn_wc_exclude(wc_ctx,
                             local_abspath,
                             cancel_func, cancel_baton,
                             notify_func, notify_baton,
                             pool));
    }
  else
    {
      SVN_ERR(svn_wc_crop_tree2(wc_ctx,
                                local_abspath,
                                depth,
                                cancel_func, cancel_baton,
                                notify_func, notify_baton,
                                pool));
    }

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
