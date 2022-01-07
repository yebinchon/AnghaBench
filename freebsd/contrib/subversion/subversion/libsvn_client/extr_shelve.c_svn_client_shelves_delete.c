
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 int SVN_ERR (TYPE_1__*) ;
 TYPE_1__* SVN_NO_ERROR ;
 TYPE_1__* shelf_delete_patch (char const*,char const*,int *,int *) ;
 TYPE_1__* svn_client_get_wc_root (char const**,char const*,int *,int *,int *) ;
 TYPE_1__* svn_error_quick_wrapf (TYPE_1__*,char*,char const*) ;

svn_error_t *
svn_client_shelves_delete(const char *name,
                          const char *local_abspath,
                          svn_boolean_t dry_run,
                          svn_client_ctx_t *ctx,
                          apr_pool_t *pool)
{
  const char *wc_root_abspath;

  SVN_ERR(svn_client_get_wc_root(&wc_root_abspath,
                                 local_abspath, ctx, pool, pool));


  if (! dry_run)
    {
      svn_error_t *err;

      err = shelf_delete_patch(name, wc_root_abspath,
                               ctx, pool);
      if (err && APR_STATUS_IS_ENOENT(err->apr_err))
        {
          return svn_error_quick_wrapf(err,
                                       "Shelved change '%s' not found",
                                       name);
        }
      else
        SVN_ERR(err);
    }

  return SVN_NO_ERROR;
}
