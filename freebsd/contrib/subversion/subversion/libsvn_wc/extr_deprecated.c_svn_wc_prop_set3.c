
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_wc_notify_func2_t ;
typedef int svn_wc_context_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_string_t ;
struct TYPE_9__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (TYPE_1__*) ;
 scalar_t__ SVN_ERR_WC_INVALID_SCHEDULE ;
 int svn_depth_empty ;
 TYPE_1__* svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (int ) ;
 int svn_wc__adm_get_db (int *) ;
 TYPE_1__* svn_wc__context_create_with_db (int **,int *,int ,int *) ;
 int svn_wc_context_destroy (int *) ;
 TYPE_1__* svn_wc_prop_set4 (int *,char const*,char const*,int const*,int ,int ,int *,int *,int *,int ,void*,int *) ;

svn_error_t *
svn_wc_prop_set3(const char *name,
                 const svn_string_t *value,
                 const char *path,
                 svn_wc_adm_access_t *adm_access,
                 svn_boolean_t skip_checks,
                 svn_wc_notify_func2_t notify_func,
                 void *notify_baton,
                 apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;
  const char *local_abspath;
  svn_error_t *err;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));
  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0) ,
                                         svn_wc__adm_get_db(adm_access),
                                         pool));

  err = svn_wc_prop_set4(wc_ctx, local_abspath,
                         name, value,
                         svn_depth_empty,
                         skip_checks, ((void*)0) ,
                         ((void*)0), ((void*)0) ,
                         notify_func, notify_baton,
                         pool);

  if (err && err->apr_err == SVN_ERR_WC_INVALID_SCHEDULE)
    svn_error_clear(err);
  else
    SVN_ERR(err);

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
