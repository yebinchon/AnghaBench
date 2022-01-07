
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_12__ {struct notify_unlock_baton_t* notify_baton2; int notify_func2; } ;
typedef TYPE_1__ svn_client_ctx_t ;
struct TYPE_13__ {int force; int targets; } ;
typedef TYPE_2__ svn_cl__opt_state_t ;
struct TYPE_14__ {TYPE_1__* ctx; TYPE_2__* opt_state; } ;
typedef TYPE_3__ svn_cl__cmd_baton_t ;
struct notify_unlock_baton_t {scalar_t__ had_failure; struct notify_unlock_baton_t* inner_baton; int inner_notify; } ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;
struct TYPE_15__ {int nelts; } ;
typedef TYPE_4__ apr_array_header_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_CL_INSUFFICIENT_ARGS ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int * SVN_NO_ERROR ;
 int * _ (char*) ;
 int notify_unlock_handler ;
 int svn_cl__args_to_target_array_print_reserved (TYPE_4__**,int *,int ,TYPE_1__*,scalar_t__,int *) ;
 int svn_cl__assert_homogeneous_target_type (TYPE_4__*) ;
 int svn_cl__eat_peg_revisions (TYPE_4__**,TYPE_4__*,int *) ;
 int svn_client_unlock (TYPE_4__*,int ,TYPE_1__*,int *) ;
 int * svn_error_create (int ,int *,int *) ;

svn_error_t *
svn_cl__unlock(apr_getopt_t *os,
               void *baton,
               apr_pool_t *scratch_pool)
{
  svn_cl__opt_state_t *opt_state = ((svn_cl__cmd_baton_t *) baton)->opt_state;
  svn_client_ctx_t *ctx = ((svn_cl__cmd_baton_t *) baton)->ctx;
  apr_array_header_t *targets;
  struct notify_unlock_baton_t nub;

  SVN_ERR(svn_cl__args_to_target_array_print_reserved(&targets, os,
                                                      opt_state->targets,
                                                      ctx, FALSE,
                                                      scratch_pool));


  if (! targets->nelts)
    return svn_error_create(SVN_ERR_CL_INSUFFICIENT_ARGS, 0, ((void*)0));

  SVN_ERR(svn_cl__eat_peg_revisions(&targets, targets, scratch_pool));

  SVN_ERR(svn_cl__assert_homogeneous_target_type(targets));

  nub.inner_notify = ctx->notify_func2;
  nub.inner_baton = ctx->notify_baton2;
  nub.had_failure = FALSE;

  ctx->notify_func2 = notify_unlock_handler;
  ctx->notify_baton2 = &nub;

  SVN_ERR(svn_client_unlock(targets, opt_state->force, ctx, scratch_pool));

  if (nub.had_failure)
    return svn_error_create(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                            _("One or more locks could not be released"));

  return SVN_NO_ERROR;
}
