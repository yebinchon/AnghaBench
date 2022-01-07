
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_context_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int * svn_wc__adm_get_db (int *) ;
 int svn_wc__context_create_with_db (int **,int *,int *,int *) ;
 int svn_wc_context_destroy (int *) ;
 int svn_wc_text_modified_p2 (int *,int *,char const*,int ,int *) ;

svn_error_t *
svn_wc_text_modified_p(svn_boolean_t *modified_p,
                       const char *filename,
                       svn_boolean_t force_comparison,
                       svn_wc_adm_access_t *adm_access,
                       apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;
  svn_wc__db_t *db = svn_wc__adm_get_db(adm_access);
  const char *local_abspath;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, filename, pool));
  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0), db, pool));

  SVN_ERR(svn_wc_text_modified_p2(modified_p, wc_ctx, local_abspath,
                                  force_comparison, pool));

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
