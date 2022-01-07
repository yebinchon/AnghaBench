
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_context_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 scalar_t__ strcmp (int ,char const*) ;
 int svn_dirent_basename (char const*,int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc__adm_access_abspath (int *) ;
 int * svn_wc__adm_get_db (int *) ;
 int svn_wc__context_create_with_db (int **,int *,int *,int *) ;
 int svn_wc_context_destroy (int *) ;
 int svn_wc_remove_from_revision_control2 (int *,char const*,int ,int ,int ,void*,int *) ;

svn_error_t *
svn_wc_remove_from_revision_control(svn_wc_adm_access_t *adm_access,
                                    const char *name,
                                    svn_boolean_t destroy_wf,
                                    svn_boolean_t instant_error,
                                    svn_cancel_func_t cancel_func,
                                    void *cancel_baton,
                                    apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;
  svn_wc__db_t *wc_db = svn_wc__adm_get_db(adm_access);
  const char *local_abspath = svn_dirent_join(
                                    svn_wc__adm_access_abspath(adm_access),
                                    name,
                                    pool);


  SVN_ERR_ASSERT(strcmp(svn_dirent_basename(name, ((void*)0)), name) == 0);
  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0), wc_db, pool));

  SVN_ERR(svn_wc_remove_from_revision_control2(wc_ctx,
                                               local_abspath,
                                               destroy_wf,
                                               instant_error,
                                               cancel_func, cancel_baton,
                                               pool));

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
