
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* err; } ;
typedef TYPE_1__ svn_wc_notify_t ;
struct TYPE_12__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
struct TYPE_13__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;} ;
typedef TYPE_3__ svn_client_ctx_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_ERR_CANCELLED ;
 TYPE_2__* SVN_NO_ERROR ;
 int stub1 (int ,TYPE_1__*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_failed_external ;

__attribute__((used)) static svn_error_t *
wrap_list_error(const svn_client_ctx_t *ctx,
                const char *target_abspath,
                svn_error_t *err,
                apr_pool_t *scratch_pool)
{
  if (err && err->apr_err != SVN_ERR_CANCELLED)
    {
      if (ctx->notify_func2)
        {
          svn_wc_notify_t *notifier = svn_wc_create_notify(
                                            target_abspath,
                                            svn_wc_notify_failed_external,
                                            scratch_pool);
          notifier->err = err;
          ctx->notify_func2(ctx->notify_baton2, notifier, scratch_pool);
        }
      svn_error_clear(err);
      return SVN_NO_ERROR;
    }

  return err;
}
