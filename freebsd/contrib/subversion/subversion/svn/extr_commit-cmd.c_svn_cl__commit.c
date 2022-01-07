
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_config_t ;
struct TYPE_16__ {int log_msg_baton3; struct copy_warning_notify_baton* notify_baton2; int notify_func2; scalar_t__ config; int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
struct TYPE_17__ {scalar_t__ depth; scalar_t__ quiet; int revprop_table; int changelists; int include_externals; int keep_changelists; int targets; } ;
typedef TYPE_2__ svn_cl__opt_state_t ;
struct TYPE_18__ {TYPE_1__* ctx; TYPE_2__* opt_state; } ;
typedef TYPE_3__ svn_cl__cmd_baton_t ;
typedef void* svn_boolean_t ;
struct copy_warning_notify_baton {scalar_t__ depth; void* warned; struct copy_warning_notify_baton* wrapped_baton; int wrapped_func; } ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;
struct TYPE_19__ {int nelts; } ;
typedef TYPE_4__ apr_array_header_t ;


 void* FALSE ;
 int SVN_CONFIG_CATEGORY_CONFIG ;
 int SVN_CONFIG_OPTION_NO_UNLOCK ;
 int SVN_CONFIG_SECTION_MISCELLANY ;
 int SVN_ERR (int ) ;
 int SVN_ERR_W (int ,int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 char* apr_pstrdup (int *,char const*) ;
 int copy_warning_notify_func ;
 int svn_cl__args_to_target_array_print_reserved (TYPE_4__**,int *,int ,TYPE_1__*,void*,int *) ;
 int svn_cl__check_targets_are_local_paths (TYPE_4__*) ;
 int svn_cl__cleanup_log_msg (int ,int *,int *) ;
 int svn_cl__eat_peg_revisions (TYPE_4__**,TYPE_4__*,int *) ;
 int svn_cl__make_log_msg_baton (int *,TYPE_2__*,char const*,scalar_t__,int *) ;
 int * svn_cl__print_commit_info ;
 int * svn_client_commit6 (TYPE_4__*,scalar_t__,void*,int ,int ,int ,int ,int ,int ,int *,int *,TYPE_1__*,int *) ;
 int svn_config_get_bool (int *,void**,int ,int ,void*) ;
 scalar_t__ svn_depth_infinity ;
 scalar_t__ svn_depth_unknown ;
 int svn_dirent_condense_targets (char const**,TYPE_4__**,TYPE_4__*,int ,int *,int *) ;
 int * svn_hash_gets (scalar_t__,int ) ;
 int svn_opt_push_implicit_dot_target (TYPE_4__*,int *) ;
 int svn_wc_get_actual_target2 (char const**,char const**,int ,char const*,int *,int *) ;

svn_error_t *
svn_cl__commit(apr_getopt_t *os,
               void *baton,
               apr_pool_t *pool)
{
  svn_error_t *err;
  svn_cl__opt_state_t *opt_state = ((svn_cl__cmd_baton_t *) baton)->opt_state;
  svn_client_ctx_t *ctx = ((svn_cl__cmd_baton_t *) baton)->ctx;
  apr_array_header_t *targets;
  apr_array_header_t *condensed_targets;
  const char *base_dir;
  svn_config_t *cfg;
  svn_boolean_t no_unlock = FALSE;
  struct copy_warning_notify_baton cwnb;

  SVN_ERR(svn_cl__args_to_target_array_print_reserved(&targets, os,
                                                      opt_state->targets,
                                                      ctx, FALSE, pool));

  SVN_ERR_W(svn_cl__check_targets_are_local_paths(targets),
            _("Commit targets must be local paths"));


  svn_opt_push_implicit_dot_target(targets, pool);

  SVN_ERR(svn_cl__eat_peg_revisions(&targets, targets, pool));


  SVN_ERR(svn_dirent_condense_targets(&base_dir, &condensed_targets, targets,
                                      TRUE, pool, pool));

  if ((! condensed_targets) || (! condensed_targets->nelts))
    {
      const char *parent_dir, *base_name;

      SVN_ERR(svn_wc_get_actual_target2(&parent_dir, &base_name, ctx->wc_ctx,
                                        base_dir, pool, pool));
      if (*base_name)
        base_dir = apr_pstrdup(pool, parent_dir);
    }

  if (opt_state->depth == svn_depth_unknown)
    opt_state->depth = svn_depth_infinity;

  cfg = ctx->config
           ? svn_hash_gets(ctx->config, SVN_CONFIG_CATEGORY_CONFIG)
           : ((void*)0);
  if (cfg)
    SVN_ERR(svn_config_get_bool(cfg, &no_unlock,
                                SVN_CONFIG_SECTION_MISCELLANY,
                                SVN_CONFIG_OPTION_NO_UNLOCK, FALSE));





  SVN_ERR(svn_cl__make_log_msg_baton(&(ctx->log_msg_baton3),
                                     opt_state, base_dir,
                                     ctx->config, pool));





  if (opt_state->depth < svn_depth_infinity)
    {
      cwnb.wrapped_func = ctx->notify_func2;
      cwnb.wrapped_baton = ctx->notify_baton2;
      cwnb.depth = opt_state->depth;
      cwnb.warned = FALSE;
      ctx->notify_func2 = copy_warning_notify_func;
      ctx->notify_baton2 = &cwnb;
    }


  err = svn_client_commit6(targets,
                           opt_state->depth,
                           no_unlock,
                           opt_state->keep_changelists,
                           TRUE ,
                           opt_state->include_externals,
                           opt_state->include_externals,
                           opt_state->changelists,
                           opt_state->revprop_table,
                           (opt_state->quiet
                            ? ((void*)0) : svn_cl__print_commit_info),
                           ((void*)0),
                           ctx,
                           pool);
  SVN_ERR(svn_cl__cleanup_log_msg(ctx->log_msg_baton3, err, pool));

  return SVN_NO_ERROR;
}
