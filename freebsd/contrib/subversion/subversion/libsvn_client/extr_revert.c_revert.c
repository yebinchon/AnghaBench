
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {TYPE_3__* err; } ;
typedef TYPE_2__ svn_wc_notify_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
struct revert_with_write_lock_baton {TYPE_1__* ctx; int local_abspath; int metadata_only; int clear_changelists; int changelists; int use_commit_times; int depth; } ;
typedef int apr_pool_t ;
struct TYPE_13__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_2__*,int *) ;int cancel_baton; int cancel_func; int wc_ctx; } ;


 scalar_t__ SVN_ERR_ENTRY_NOT_FOUND ;
 scalar_t__ SVN_ERR_UNVERSIONED_RESOURCE ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_3__* SVN_NO_ERROR ;
 int stub1 (int ,TYPE_2__*,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 TYPE_2__* svn_wc_create_notify (int ,int ,int *) ;
 int svn_wc_notify_skip ;
 TYPE_3__* svn_wc_revert5 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int (*) (int ,TYPE_2__*,int *),int ,int *) ;

__attribute__((used)) static svn_error_t *
revert(void *baton, apr_pool_t *result_pool, apr_pool_t *scratch_pool)
{
  struct revert_with_write_lock_baton *b = baton;
  svn_error_t *err;

  err = svn_wc_revert5(b->ctx->wc_ctx,
                       b->local_abspath,
                       b->depth,
                       b->use_commit_times,
                       b->changelists,
                       b->clear_changelists,
                       b->metadata_only,
                       b->ctx->cancel_func, b->ctx->cancel_baton,
                       b->ctx->notify_func2, b->ctx->notify_baton2,
                       scratch_pool);

  if (err)
    {


      if (err->apr_err == SVN_ERR_ENTRY_NOT_FOUND
          || err->apr_err == SVN_ERR_UNVERSIONED_RESOURCE
          || err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
        {
          if (b->ctx->notify_func2)
            {
              svn_wc_notify_t *notify;

              notify = svn_wc_create_notify(b->local_abspath,
                                            svn_wc_notify_skip,
                                            scratch_pool);

              notify->err = err;

              b->ctx->notify_func2(b->ctx->notify_baton2,
                                   notify, scratch_pool);
            }
          svn_error_clear(err);
        }
      else
        return svn_error_trace(err);
    }

  return SVN_NO_ERROR;
}
