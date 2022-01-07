
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ svn_wc_operation_t ;
typedef int svn_error_t ;
struct TYPE_9__ {int wc_ctx; int notify_baton2; int (* notify_func2 ) (int ,int ,int *) ;} ;
typedef TYPE_1__ svn_client_ctx_t ;
struct TYPE_10__ {int resolution_tree; } ;
typedef TYPE_2__ svn_client_conflict_t ;
typedef int svn_client_conflict_option_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,int ,int *) ;
 char* svn_client_conflict_get_local_abspath (TYPE_2__*) ;
 scalar_t__ svn_client_conflict_get_operation (TYPE_2__*) ;
 int svn_client_conflict_option_get_id (int *) ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_wc__acquire_write_lock_for_resolve (char const**,int ,char const*,int *,int *) ;
 int * svn_wc__del_tree_conflict (int ,char const*,int *) ;
 int svn_wc__release_write_lock (int ,char const*,int *) ;
 int svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_resolved_tree ;
 scalar_t__ svn_wc_operation_update ;
 int * verify_local_state_for_incoming_add_upon_update (TYPE_2__*,int *,TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
resolve_incoming_add_ignore(svn_client_conflict_option_t *option,
                            svn_client_conflict_t *conflict,
                            svn_client_ctx_t *ctx,
                            apr_pool_t *scratch_pool)
{
  const char *local_abspath;
  const char *lock_abspath;
  svn_wc_operation_t operation;
  svn_error_t *err;

  local_abspath = svn_client_conflict_get_local_abspath(conflict);
  operation = svn_client_conflict_get_operation(conflict);

  SVN_ERR(svn_wc__acquire_write_lock_for_resolve(&lock_abspath, ctx->wc_ctx,
                                                 local_abspath,
                                                 scratch_pool, scratch_pool));

  if (operation == svn_wc_operation_update)
    {
      err = verify_local_state_for_incoming_add_upon_update(conflict, option,
                                                            ctx, scratch_pool);
      if (err)
        goto unlock_wc;
    }





  err = svn_wc__del_tree_conflict(ctx->wc_ctx, local_abspath, scratch_pool);


  if (ctx->notify_func2)
    ctx->notify_func2(ctx->notify_baton2,
                      svn_wc_create_notify(local_abspath,
                                           svn_wc_notify_resolved_tree,
                                           scratch_pool),
                      scratch_pool);

unlock_wc:
  err = svn_error_compose_create(err, svn_wc__release_write_lock(ctx->wc_ctx,
                                                                 lock_abspath,
                                                                 scratch_pool));
  SVN_ERR(err);

  conflict->resolution_tree = svn_client_conflict_option_get_id(option);

  return SVN_NO_ERROR;
}
