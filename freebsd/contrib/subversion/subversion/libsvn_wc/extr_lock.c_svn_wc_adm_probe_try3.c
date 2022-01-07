
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_wc_adm_access_t ;
struct TYPE_6__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_ERR_WC_NOT_LOCKED ;
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ;
 int svn_error_clear (TYPE_1__*) ;
 int svn_wc_adm_access_pool (int *) ;
 TYPE_1__* svn_wc_adm_probe_open3 (int **,int *,char const*,int ,int,int ,void*,int ) ;
 TYPE_1__* svn_wc_adm_probe_retrieve (int **,int *,char const*,int *) ;

svn_error_t *
svn_wc_adm_probe_try3(svn_wc_adm_access_t **adm_access,
                      svn_wc_adm_access_t *associated,
                      const char *path,
                      svn_boolean_t write_lock,
                      int levels_to_lock,
                      svn_cancel_func_t cancel_func,
                      void *cancel_baton,
                      apr_pool_t *pool)
{
  svn_error_t *err;

  err = svn_wc_adm_probe_retrieve(adm_access, associated, path, pool);




  if (err && (err->apr_err == SVN_ERR_WC_NOT_LOCKED))
    {
      svn_error_clear(err);
      err = svn_wc_adm_probe_open3(adm_access, associated,
                                   path, write_lock, levels_to_lock,
                                   cancel_func, cancel_baton,
                                   svn_wc_adm_access_pool(associated));







      if (err && (err->apr_err == SVN_ERR_WC_NOT_WORKING_COPY))
        {
          svn_error_clear(err);
          *adm_access = ((void*)0);
          err = ((void*)0);
        }
    }

  return err;
}
