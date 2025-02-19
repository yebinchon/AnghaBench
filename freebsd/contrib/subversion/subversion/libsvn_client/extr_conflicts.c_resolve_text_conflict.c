
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_wc_conflict_choice_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int wc_ctx; int notify_baton2; int notify_func2; int cancel_baton; int cancel_func; } ;
typedef TYPE_1__ svn_client_ctx_t ;
struct TYPE_7__ {int resolution_text; } ;
typedef TYPE_2__ svn_client_conflict_t ;
typedef int svn_client_conflict_option_t ;
typedef int svn_client_conflict_option_id_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int conflict_option_id_to_wc_conflict_choice (int ) ;
 char* svn_client_conflict_get_local_abspath (TYPE_2__*) ;
 int svn_client_conflict_option_get_id (int *) ;
 int * svn_error_compose_create (int *,int ) ;
 int svn_io_sleep_for_timestamps (char const*,int *) ;
 int * svn_wc__acquire_write_lock_for_resolve (char const**,int ,char const*,int *,int *) ;
 int * svn_wc__conflict_text_mark_resolved (int ,char const*,int ,int ,int ,int ,int ,int *) ;
 int svn_wc__release_write_lock (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
resolve_text_conflict(svn_client_conflict_option_t *option,
                      svn_client_conflict_t *conflict,
                      svn_client_ctx_t *ctx,
                      apr_pool_t *scratch_pool)
{
  svn_client_conflict_option_id_t option_id;
  const char *local_abspath;
  const char *lock_abspath;
  svn_wc_conflict_choice_t conflict_choice;
  svn_error_t *err;

  option_id = svn_client_conflict_option_get_id(option);
  conflict_choice = conflict_option_id_to_wc_conflict_choice(option_id);
  local_abspath = svn_client_conflict_get_local_abspath(conflict);

  SVN_ERR(svn_wc__acquire_write_lock_for_resolve(&lock_abspath, ctx->wc_ctx,
                                                 local_abspath,
                                                 scratch_pool, scratch_pool));
  err = svn_wc__conflict_text_mark_resolved(ctx->wc_ctx,
                                            local_abspath,
                                            conflict_choice,
                                            ctx->cancel_func,
                                            ctx->cancel_baton,
                                            ctx->notify_func2,
                                            ctx->notify_baton2,
                                            scratch_pool);
  err = svn_error_compose_create(err, svn_wc__release_write_lock(ctx->wc_ctx,
                                                                 lock_abspath,
                                                                 scratch_pool));
  svn_io_sleep_for_timestamps(local_abspath, scratch_pool);
  SVN_ERR(err);

  conflict->resolution_text = option_id;

  return SVN_NO_ERROR;
}
