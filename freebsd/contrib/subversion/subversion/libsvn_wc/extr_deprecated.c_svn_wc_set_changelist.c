
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_notify_func2_t ;
typedef int svn_wc_context_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int svn_depth_empty ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc__adm_get_db (int *) ;
 int svn_wc__context_create_with_db (int **,int *,int ,int *) ;
 int svn_wc_context_destroy (int *) ;
 int svn_wc_set_changelist2 (int *,char const*,char const*,int ,int *,int ,void*,int ,void*,int *) ;

svn_error_t *
svn_wc_set_changelist(const char *path,
                      const char *changelist,
                      svn_wc_adm_access_t *adm_access,
                      svn_cancel_func_t cancel_func,
                      void *cancel_baton,
                      svn_wc_notify_func2_t notify_func,
                      void *notify_baton,
                      apr_pool_t *pool)
{
  const char *local_abspath;
  svn_wc_context_t *wc_ctx;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));
  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0) ,
                                         svn_wc__adm_get_db(adm_access),
                                         pool));

  SVN_ERR(svn_wc_set_changelist2(wc_ctx, local_abspath, changelist,
                                 svn_depth_empty, ((void*)0),
                                 cancel_func, cancel_baton, notify_func,
                                 notify_baton, pool));

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
