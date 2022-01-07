
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_wc_context_t ;
typedef int svn_wc_adm_access_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_wc__adm_get_db (int *) ;
 int svn_wc__context_create_with_db (int **,int *,int ,int *) ;
 TYPE_1__* svn_wc_context_destroy (int *) ;
 TYPE_1__* svn_wc_props_modified_p2 (int *,int *,char const*,int *) ;

svn_error_t *
svn_wc_props_modified_p(svn_boolean_t *modified_p,
                        const char *path,
                        svn_wc_adm_access_t *adm_access,
                        apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;
  const char *local_abspath;
  svn_error_t *err;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));
  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0) ,
                                         svn_wc__adm_get_db(adm_access), pool));

  err = svn_wc_props_modified_p2(modified_p,
                                 wc_ctx,
                                 local_abspath,
                                 pool);

  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return svn_error_trace(err);

      svn_error_clear(err);
      *modified_p = FALSE;
    }

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
