
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_notify_func2_t ;
typedef int svn_wc_context_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc__adm_access_abspath (int *) ;
 int * svn_wc__adm_get_db (int *) ;
 int svn_wc__context_create_with_db (int **,int *,int *,int *) ;
 int svn_wc_context_destroy (int *) ;
 int svn_wc_copy3 (int *,char const*,char const*,int ,int ,void*,int ,void*,int *) ;

svn_error_t *
svn_wc_copy2(const char *src,
             svn_wc_adm_access_t *dst_parent,
             const char *dst_basename,
             svn_cancel_func_t cancel_func,
             void *cancel_baton,
             svn_wc_notify_func2_t notify_func,
             void *notify_baton,
             apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;
  svn_wc__db_t *wc_db = svn_wc__adm_get_db(dst_parent);
  const char *src_abspath;
  const char *dst_abspath;

  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0), wc_db, pool));
  SVN_ERR(svn_dirent_get_absolute(&src_abspath, src, pool));

  dst_abspath = svn_dirent_join(svn_wc__adm_access_abspath(dst_parent),
                                dst_basename, pool);

  SVN_ERR(svn_wc_copy3(wc_ctx,
                       src_abspath,
                       dst_abspath,
                       FALSE ,
                       cancel_func, cancel_baton,
                       notify_func, notify_baton,
                       pool));

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
