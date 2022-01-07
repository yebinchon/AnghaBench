
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
struct TYPE_9__ {struct svn_cl__check_externals_failed_notify_baton* notify_baton2; int notify_func2; } ;
typedef TYPE_1__ svn_client_ctx_t ;
struct TYPE_10__ {scalar_t__ depth; scalar_t__ set_depth; int quiet; int parents; int adds_as_modification; int force; int ignore_externals; int start_revision; scalar_t__ changelists; int targets; } ;
typedef TYPE_2__ svn_cl__opt_state_t ;
typedef int svn_cl__conflict_stats_t ;
struct TYPE_11__ {TYPE_1__* ctx; int * conflict_stats; TYPE_2__* opt_state; } ;
typedef TYPE_3__ svn_cl__cmd_baton_t ;
typedef void* svn_boolean_t ;
struct svn_cl__check_externals_failed_notify_baton {struct svn_cl__check_externals_failed_notify_baton* wrapped_baton; void* had_externals_error; int wrapped_func; } ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;
typedef int apr_array_header_t ;


 void* FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_CL_ERROR_PROCESSING_EXTERNALS ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int _ (char*) ;
 int * print_update_summary (int *,int *,int *) ;
 int svn_cl__args_to_target_array_print_reserved (int **,int *,int ,TYPE_1__*,void*,int *) ;
 int svn_cl__changelist_paths (int **,scalar_t__,int *,scalar_t__,TYPE_1__*,int *,int *) ;
 int svn_cl__check_externals_failed_notify_wrapper ;
 int svn_cl__check_targets_are_local_paths (int *) ;
 int svn_cl__conflict_stats_get_paths (int **,int *,int *,int *) ;
 int svn_cl__eat_peg_revisions (int **,int *,int *) ;
 int * svn_cl__notifier_print_conflict_stats (struct svn_cl__check_externals_failed_notify_baton*,int *) ;
 int svn_cl__walk_conflicts (int *,int *,TYPE_2__*,TYPE_1__*,int *) ;
 int svn_client_update4 (int **,int *,int *,scalar_t__,void*,int ,int ,int ,int ,TYPE_1__*,int *) ;
 scalar_t__ svn_depth_infinity ;
 scalar_t__ svn_depth_unknown ;
 int * svn_error_compose_create (int *,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_opt_push_implicit_dot_target (int *,int *) ;

svn_error_t *
svn_cl__update(apr_getopt_t *os,
               void *baton,
               apr_pool_t *scratch_pool)
{
  svn_cl__opt_state_t *opt_state = ((svn_cl__cmd_baton_t *) baton)->opt_state;
  svn_cl__conflict_stats_t *conflict_stats =
    ((svn_cl__cmd_baton_t *) baton)->conflict_stats;
  svn_client_ctx_t *ctx = ((svn_cl__cmd_baton_t *) baton)->ctx;
  apr_array_header_t *targets;
  svn_depth_t depth;
  svn_boolean_t depth_is_sticky;
  struct svn_cl__check_externals_failed_notify_baton nwb;
  apr_array_header_t *result_revs;
  apr_array_header_t *conflicted_paths;
  svn_error_t *err = SVN_NO_ERROR;
  svn_error_t *externals_err = SVN_NO_ERROR;

  SVN_ERR(svn_cl__args_to_target_array_print_reserved(&targets, os,
                                                      opt_state->targets,
                                                      ctx, FALSE,
                                                      scratch_pool));


  svn_opt_push_implicit_dot_target(targets, scratch_pool);

  SVN_ERR(svn_cl__eat_peg_revisions(&targets, targets, scratch_pool));

  SVN_ERR(svn_cl__check_targets_are_local_paths(targets));



  if (opt_state->changelists)
    {
      svn_depth_t cl_depth = opt_state->depth;
      if (cl_depth == svn_depth_unknown)
        cl_depth = svn_depth_infinity;
      SVN_ERR(svn_cl__changelist_paths(&targets,
                                       opt_state->changelists, targets,
                                       cl_depth, ctx, scratch_pool,
                                       scratch_pool));
    }


  if (opt_state->set_depth != svn_depth_unknown)
    {
      depth = opt_state->set_depth;
      depth_is_sticky = TRUE;
    }
  else
    {
      depth = opt_state->depth;
      depth_is_sticky = FALSE;
    }

  nwb.wrapped_func = ctx->notify_func2;
  nwb.wrapped_baton = ctx->notify_baton2;
  nwb.had_externals_error = FALSE;
  ctx->notify_func2 = svn_cl__check_externals_failed_notify_wrapper;
  ctx->notify_baton2 = &nwb;

  SVN_ERR(svn_client_update4(&result_revs, targets,
                             &(opt_state->start_revision),
                             depth, depth_is_sticky,
                             opt_state->ignore_externals,
                             opt_state->force,
                             opt_state->adds_as_modification,
                             opt_state->parents,
                             ctx, scratch_pool));

  if (nwb.had_externals_error)
    externals_err = svn_error_create(SVN_ERR_CL_ERROR_PROCESSING_EXTERNALS,
                                     ((void*)0),
                                     _("Failure occurred processing one or "
                                       "more externals definitions"));


  SVN_ERR(svn_cl__conflict_stats_get_paths(&conflicted_paths, conflict_stats,
                                           scratch_pool, scratch_pool));
  if (conflicted_paths)
    SVN_ERR(svn_cl__walk_conflicts(conflicted_paths, conflict_stats,
                                   opt_state, ctx, scratch_pool));

  if (! opt_state->quiet)
    {
      err = print_update_summary(targets, result_revs, scratch_pool);
      if (err)
        return svn_error_compose_create(externals_err, err);




      err = svn_cl__notifier_print_conflict_stats(nwb.wrapped_baton,
                                                  scratch_pool);
      if (err)
        return svn_error_compose_create(externals_err, err);
    }

  return svn_error_compose_create(externals_err, err);
}
