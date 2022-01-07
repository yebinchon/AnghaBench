
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_18__ {scalar_t__ depth; int changelists; int targets; } ;
typedef TYPE_2__ svn_cl__opt_state_t ;
struct TYPE_19__ {int * ctx; TYPE_2__* opt_state; } ;
typedef TYPE_3__ svn_cl__cmd_baton_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;
struct TYPE_20__ {int nelts; } ;
typedef TYPE_4__ apr_array_header_t ;


 int FALSE ;
 int SVN_DEPTH_IS_RECURSIVE (scalar_t__) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_CL_INSUFFICIENT_ARGS ;
 scalar_t__ SVN_ERR_WC_INVALID_OPERATION_DEPTH ;
 int _ (char*) ;
 int svn_cl__args_to_target_array_print_reserved (TYPE_4__**,int *,int ,int *,int ,int *) ;
 int svn_cl__check_targets_are_local_paths (TYPE_4__*) ;
 int svn_cl__eat_peg_revisions (TYPE_4__**,TYPE_4__*,int *) ;
 TYPE_1__* svn_client_revert3 (TYPE_4__*,scalar_t__,int ,int ,int ,int *,int *) ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_unknown ;
 TYPE_1__* svn_error_create (int ,int ,int *) ;
 TYPE_1__* svn_error_quick_wrap (TYPE_1__*,int ) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;

svn_error_t *
svn_cl__revert(apr_getopt_t *os,
               void *baton,
               apr_pool_t *scratch_pool)
{
  svn_cl__opt_state_t *opt_state = ((svn_cl__cmd_baton_t *) baton)->opt_state;
  svn_client_ctx_t *ctx = ((svn_cl__cmd_baton_t *) baton)->ctx;
  apr_array_header_t *targets = ((void*)0);
  svn_error_t *err;

  SVN_ERR(svn_cl__args_to_target_array_print_reserved(&targets, os,
                                                      opt_state->targets,
                                                      ctx, FALSE,
                                                      scratch_pool));


  if (! targets->nelts)
    return svn_error_create(SVN_ERR_CL_INSUFFICIENT_ARGS, 0, ((void*)0));



  if (opt_state->depth == svn_depth_unknown)
    opt_state->depth = svn_depth_empty;

  SVN_ERR(svn_cl__eat_peg_revisions(&targets, targets, scratch_pool));

  SVN_ERR(svn_cl__check_targets_are_local_paths(targets));

  err = svn_client_revert3(targets, opt_state->depth,
                           opt_state->changelists,
                           FALSE ,
                           FALSE ,
                           ctx, scratch_pool);
  if (err
      && (err->apr_err == SVN_ERR_WC_INVALID_OPERATION_DEPTH)
      && (! SVN_DEPTH_IS_RECURSIVE(opt_state->depth)))
    {
      err = svn_error_quick_wrap
        (err, _("Try 'svn revert --depth infinity' instead?"));
    }

  return svn_error_trace(err);
}
