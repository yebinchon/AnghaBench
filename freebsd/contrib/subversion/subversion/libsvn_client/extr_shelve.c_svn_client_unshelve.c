
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (TYPE_1__*) ;
 scalar_t__ SVN_ERR_ILLEGAL_TARGET ;
 TYPE_1__* SVN_NO_ERROR ;
 TYPE_1__* shelf_apply_patch (char const*,char const*,int ,int ,int *,int *) ;
 TYPE_1__* shelf_delete_patch (char const*,char const*,int *,int *) ;
 TYPE_1__* svn_client_get_wc_root (char const**,char const*,int *,int *,int *) ;
 TYPE_1__* svn_error_quick_wrapf (TYPE_1__*,char*,char const*) ;

svn_error_t *
svn_client_unshelve(const char *name,
                    const char *local_abspath,
                    svn_boolean_t keep,
                    svn_boolean_t dry_run,
                    svn_client_ctx_t *ctx,
                    apr_pool_t *pool)
{
  const char *wc_root_abspath;
  svn_error_t *err;

  SVN_ERR(svn_client_get_wc_root(&wc_root_abspath,
                                 local_abspath, ctx, pool, pool));


  err = shelf_apply_patch(name, wc_root_abspath,
                          FALSE , dry_run,
                          ctx, pool);
  if (err && err->apr_err == SVN_ERR_ILLEGAL_TARGET)
    {
      return svn_error_quick_wrapf(err,
                                   "Shelved change '%s' not found",
                                   name);
    }
  else
    SVN_ERR(err);


  if (! keep && ! dry_run)
    {
      SVN_ERR(shelf_delete_patch(name, wc_root_abspath,
                                 ctx, pool));
    }

  return SVN_NO_ERROR;
}
