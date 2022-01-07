
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_status3_t ;
typedef int svn_wc_status2_t ;
typedef int svn_wc_context_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc__adm_get_db (int *) ;
 int svn_wc__context_create_with_db (int **,int *,int ,int *) ;
 int svn_wc__status2_from_3 (int **,int *,int *,char const*,int *,int *) ;
 int svn_wc_context_destroy (int *) ;
 int svn_wc_status3 (int **,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc_status2(svn_wc_status2_t **status,
               const char *path,
               svn_wc_adm_access_t *adm_access,
               apr_pool_t *pool)
{
  const char *local_abspath;
  svn_wc_context_t *wc_ctx;
  svn_wc_status3_t *stat3;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));
  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0) ,
                                         svn_wc__adm_get_db(adm_access),
                                         pool));

  SVN_ERR(svn_wc_status3(&stat3, wc_ctx, local_abspath, pool, pool));
  SVN_ERR(svn_wc__status2_from_3(status, stat3, wc_ctx, local_abspath,
                                 pool, pool));

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
