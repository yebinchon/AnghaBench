
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_27__ {void* revision; void* lock_state; void* prop_state; void* content_state; void* kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef void* svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_ra_reporter3_t ;
struct TYPE_28__ {scalar_t__ kind; int value; } ;
typedef TYPE_2__ svn_opt_revision_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_29__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_delta_editor_t ;
typedef int svn_config_t ;
struct TYPE_30__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;int wc_ctx; int cancel_baton; int cancel_func; scalar_t__ config; } ;
typedef TYPE_4__ svn_client_ctx_t ;
typedef int svn_boolean_t ;
struct svn_client__dirent_fetcher_baton_t {char const* anchor_url; void* target_revision; int * ra_session; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_CONFIG_CATEGORY_CONFIG ;
 int SVN_CONFIG_OPTION_DIFF3_CMD ;
 int SVN_CONFIG_OPTION_PRESERVED_CF_EXTS ;
 int SVN_CONFIG_OPTION_USE_COMMIT_TIMES ;
 int SVN_CONFIG_SECTION_HELPERS ;
 int SVN_CONFIG_SECTION_MISCELLANY ;
 scalar_t__ SVN_DEPTH_IS_RECURSIVE (int ) ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_RA_ILLEGAL_URL ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 void* SVN_INVALID_REVNUM ;
 TYPE_3__* SVN_NO_ERROR ;
 int SVN_RA_CAPABILITY_DEPTH ;
 int TRUE ;
 int is_empty_wc (int*,char const*,char const*,int *) ;
 int * record_conflict ;
 scalar_t__ strcmp (char const*,char const*) ;
 int stub1 (int ,TYPE_1__*,int *) ;
 int stub2 (int ,TYPE_1__*,int *) ;
 int stub3 (int ,TYPE_1__*,int *) ;
 int svn_client__dirent_fetcher ;
 int svn_client__get_inheritable_props (int **,char const*,void*,int ,int *,TYPE_4__*,int *,int *) ;
 int svn_client__get_revision_number (void**,int *,int ,char const*,int *,TYPE_2__*,int *) ;
 int svn_client__handle_externals (int *,int *,char const*,char const*,int ,int*,int *,TYPE_4__*,int *) ;
 int svn_client__open_ra_session_internal (int **,char const**,char const*,char const*,int *,int,int,TYPE_4__*,int *,int *) ;
 int svn_client_relocate2 (char const*,char const*,char const*,int,TYPE_4__*,int *) ;
 int svn_config_get (int *,char const**,int ,int ,char*) ;
 int svn_config_get_bool (int *,int*,int ,int ,int) ;
 int * svn_cstring_split (char const*,char*,int,int *) ;
 int svn_depth_exclude ;
 int svn_depth_infinity ;
 int svn_depth_unknown ;
 char* svn_dirent_basename (char const*,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 int * svn_hash_gets (scalar_t__,int ) ;
 scalar_t__ svn_node_dir ;
 void* svn_node_none ;
 scalar_t__ svn_opt_revision_head ;
 scalar_t__ svn_opt_revision_unspecified ;
 int svn_path_cstring_to_utf8 (char const**,char const*,int *) ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_ra_do_update3 (int *,int const**,void**,void*,char const*,int ,int,int,int const*,void*,int *,int *) ;
 int svn_ra_get_repos_root2 (int *,char const**,int *) ;
 int svn_ra_has_capability (int *,int*,int ,int *) ;
 TYPE_3__* svn_ra_reparent (int *,char const*,int *) ;
 int svn_wc__externals_gather_definitions (int **,int **,int ,char const*,int ,int *,int *) ;
 int svn_wc__get_update_editor (int const**,void**,void**,int ,char const*,char const*,int *,int,int ,int,int,int,int,int,char const*,int *,int ,struct svn_client__dirent_fetcher_baton_t*,int *,int *,int *,int *,int ,int ,int (*) (int ,TYPE_1__*,int *),int ,int *,int *) ;
 int svn_wc__node_get_base (int *,int *,char const**,char const**,char const**,int *,int ,char const*,int,int *,int *) ;
 TYPE_3__* svn_wc_conflicted_p3 (int*,int*,int *,int ,char const*,int *) ;
 int svn_wc_crawl_revisions5 (int ,char const*,int const*,void*,int,int ,int,int,int,int ,int ,int (*) (int ,TYPE_1__*,int *),int ,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_crop_tree2 (int ,char const*,int ,int ,int ,int (*) (int ,TYPE_1__*,int *),int ,int *) ;
 int svn_wc_exclude (int ,char const*,int ,int ,int (*) (int ,TYPE_1__*,int *),int ,int *) ;
 void* svn_wc_notify_lock_state_inapplicable ;
 int svn_wc_notify_skip_conflicted ;
 void* svn_wc_notify_state_inapplicable ;
 int svn_wc_notify_update_completed ;
 int svn_wc_notify_update_skip_working_only ;
 int svn_wc_notify_update_started ;
 int svn_wc_read_kind2 (scalar_t__*,int ,char const*,int,int,int *) ;

__attribute__((used)) static svn_error_t *
update_internal(svn_revnum_t *result_rev,
                svn_boolean_t *timestamp_sleep,
                apr_hash_t *conflicted_paths,
                svn_ra_session_t **ra_session_p,
                const char *local_abspath,
                const char *anchor_abspath,
                const svn_opt_revision_t *revision,
                svn_depth_t depth,
                svn_boolean_t depth_is_sticky,
                svn_boolean_t ignore_externals,
                svn_boolean_t allow_unver_obstructions,
                svn_boolean_t adds_as_modification,
                svn_boolean_t notify_summary,
                svn_client_ctx_t *ctx,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  const svn_delta_editor_t *update_editor;
  void *update_edit_baton;
  const svn_ra_reporter3_t *reporter;
  void *report_baton;
  const char *corrected_url;
  const char *target;
  const char *repos_root_url;
  const char *repos_relpath;
  const char *repos_uuid;
  const char *anchor_url;
  svn_revnum_t revnum;
  svn_boolean_t use_commit_times;
  svn_boolean_t clean_checkout = FALSE;
  const char *diff3_cmd;
  apr_hash_t *wcroot_iprops;
  svn_opt_revision_t opt_rev;
  svn_ra_session_t *ra_session = *ra_session_p;
  const char *preserved_exts_str;
  apr_array_header_t *preserved_exts;
  struct svn_client__dirent_fetcher_baton_t dfb;
  svn_boolean_t server_supports_depth;
  svn_boolean_t cropping_target;
  svn_boolean_t target_conflicted = FALSE;
  svn_config_t *cfg = ctx->config
                      ? svn_hash_gets(ctx->config, SVN_CONFIG_CATEGORY_CONFIG)
                      : ((void*)0);

  if (result_rev)
    *result_rev = SVN_INVALID_REVNUM;


  if (depth == svn_depth_unknown)
    depth_is_sticky = FALSE;

  if (strcmp(local_abspath, anchor_abspath))
    target = svn_dirent_basename(local_abspath, scratch_pool);
  else
    target = "";


  SVN_ERR(svn_wc__node_get_base(((void*)0), ((void*)0), &repos_relpath, &repos_root_url,
                                &repos_uuid, ((void*)0),
                                ctx->wc_ctx, anchor_abspath,
                                TRUE ,
                                scratch_pool, scratch_pool));


  if (repos_relpath)
    {
      svn_error_t *err;
      svn_boolean_t text_conflicted, prop_conflicted;

      anchor_url = svn_path_url_add_component2(repos_root_url, repos_relpath,
                                               scratch_pool);

      err = svn_wc_conflicted_p3(&text_conflicted, &prop_conflicted,
                                 ((void*)0),
                                 ctx->wc_ctx, local_abspath, scratch_pool);

      if (err && err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return svn_error_trace(err);
      svn_error_clear(err);


      if (!err && (text_conflicted || prop_conflicted))
        target_conflicted = TRUE;
    }
  else
    anchor_url = ((void*)0);

  if (! anchor_url || target_conflicted)
    {
      if (ctx->notify_func2)
        {
          svn_wc_notify_t *nt;

          nt = svn_wc_create_notify(local_abspath,
                                    target_conflicted
                                      ? svn_wc_notify_skip_conflicted
                                      : svn_wc_notify_update_skip_working_only,
                                    scratch_pool);

          ctx->notify_func2(ctx->notify_baton2, nt, scratch_pool);
        }
      return SVN_NO_ERROR;
    }


  cropping_target = (depth_is_sticky && depth < svn_depth_infinity);
  if (cropping_target)
    {
      svn_node_kind_t target_kind;

      if (depth == svn_depth_exclude)
        {
          SVN_ERR(svn_wc_exclude(ctx->wc_ctx,
                                 local_abspath,
                                 ctx->cancel_func, ctx->cancel_baton,
                                 ctx->notify_func2, ctx->notify_baton2,
                                 scratch_pool));


          return SVN_NO_ERROR;
        }

      SVN_ERR(svn_wc_read_kind2(&target_kind, ctx->wc_ctx, local_abspath,
                                TRUE, TRUE, scratch_pool));
      if (target_kind == svn_node_dir)
        {
          SVN_ERR(svn_wc_crop_tree2(ctx->wc_ctx, local_abspath, depth,
                                    ctx->cancel_func, ctx->cancel_baton,
                                    ctx->notify_func2, ctx->notify_baton2,
                                    scratch_pool));
        }
    }


  SVN_ERR(is_empty_wc(&clean_checkout, local_abspath, anchor_abspath,
                      scratch_pool));


  svn_config_get(cfg, &diff3_cmd, SVN_CONFIG_SECTION_HELPERS,
                 SVN_CONFIG_OPTION_DIFF3_CMD, ((void*)0));

  if (diff3_cmd != ((void*)0))
    SVN_ERR(svn_path_cstring_to_utf8(&diff3_cmd, diff3_cmd, scratch_pool));


  SVN_ERR(svn_config_get_bool(cfg, &use_commit_times,
                              SVN_CONFIG_SECTION_MISCELLANY,
                              SVN_CONFIG_OPTION_USE_COMMIT_TIMES, FALSE));



  svn_config_get(cfg, &preserved_exts_str, SVN_CONFIG_SECTION_MISCELLANY,
                 SVN_CONFIG_OPTION_PRESERVED_CF_EXTS, "");
  preserved_exts = *preserved_exts_str
    ? svn_cstring_split(preserved_exts_str, "\n\r\t\v ", FALSE, scratch_pool)
    : ((void*)0);



  if (ctx->notify_func2 && notify_summary)
    {
      svn_wc_notify_t *notify
        = svn_wc_create_notify(local_abspath, svn_wc_notify_update_started,
                               scratch_pool);
      notify->kind = svn_node_none;
      notify->content_state = notify->prop_state
        = svn_wc_notify_state_inapplicable;
      notify->lock_state = svn_wc_notify_lock_state_inapplicable;
      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
    }





  if (ra_session)
    {
      svn_error_t *err = svn_ra_reparent(ra_session, anchor_url, scratch_pool);
      if (err)
        {
          if (err->apr_err == SVN_ERR_RA_ILLEGAL_URL)
            {

              svn_error_clear(err);
              ra_session = ((void*)0);
            }
          else
            {
              return svn_error_trace(err);
            }
        }
      else
        {
          corrected_url = ((void*)0);
        }
    }


  if (!ra_session)
    {
      SVN_ERR(svn_client__open_ra_session_internal(&ra_session, &corrected_url,
                                                   anchor_url,
                                                   anchor_abspath, ((void*)0),
                                                   TRUE ,
                                                   TRUE ,
                                                   ctx,
                                                   result_pool, scratch_pool));
      *ra_session_p = ra_session;
    }



  if (corrected_url)
    {
      const char *new_repos_root_url;



      SVN_ERR(svn_ra_get_repos_root2(ra_session, &new_repos_root_url,
                                     scratch_pool));


      SVN_ERR(svn_client_relocate2(anchor_abspath, repos_root_url,
                                   new_repos_root_url, ignore_externals,
                                   ctx, scratch_pool));


      repos_root_url = new_repos_root_url;


      anchor_url = corrected_url;
    }




  opt_rev.kind = revision->kind;
  opt_rev.value = revision->value;
  if (opt_rev.kind == svn_opt_revision_unspecified)
    opt_rev.kind = svn_opt_revision_head;



  SVN_ERR(svn_client__get_revision_number(&revnum, ((void*)0), ctx->wc_ctx,
                                          local_abspath, ra_session, &opt_rev,
                                          scratch_pool));

  SVN_ERR(svn_ra_has_capability(ra_session, &server_supports_depth,
                                SVN_RA_CAPABILITY_DEPTH, scratch_pool));

  dfb.ra_session = ra_session;
  dfb.target_revision = revnum;
  dfb.anchor_url = anchor_url;

  SVN_ERR(svn_client__get_inheritable_props(&wcroot_iprops, local_abspath,
                                            revnum, depth, ra_session,
                                            ctx, scratch_pool, scratch_pool));



  SVN_ERR(svn_wc__get_update_editor(&update_editor, &update_edit_baton,
                                    &revnum, ctx->wc_ctx, anchor_abspath,
                                    target, wcroot_iprops, use_commit_times,
                                    depth, depth_is_sticky,
                                    allow_unver_obstructions,
                                    adds_as_modification,
                                    server_supports_depth,
                                    clean_checkout,
                                    diff3_cmd, preserved_exts,
                                    svn_client__dirent_fetcher, &dfb,
                                    conflicted_paths ? record_conflict : ((void*)0),
                                    conflicted_paths,
                                    ((void*)0), ((void*)0),
                                    ctx->cancel_func, ctx->cancel_baton,
                                    ctx->notify_func2, ctx->notify_baton2,
                                    scratch_pool, scratch_pool));



  SVN_ERR(svn_ra_do_update3(ra_session, &reporter, &report_baton,
                            revnum, target,
                            (!server_supports_depth || depth_is_sticky
                             ? depth
                             : svn_depth_unknown),
                            FALSE ,
                            FALSE ,
                            update_editor, update_edit_baton,
                            scratch_pool, scratch_pool));



  *timestamp_sleep = TRUE;




  SVN_ERR(svn_wc_crawl_revisions5(ctx->wc_ctx, local_abspath, reporter,
                                  report_baton, TRUE,
                                  depth, (! depth_is_sticky),
                                  (! server_supports_depth),
                                  use_commit_times,
                                  ctx->cancel_func, ctx->cancel_baton,
                                  ctx->notify_func2, ctx->notify_baton2,
                                  scratch_pool));




  if ((SVN_DEPTH_IS_RECURSIVE(depth) || cropping_target)
      && (! ignore_externals))
    {
      apr_hash_t *new_externals;
      apr_hash_t *new_depths;
      SVN_ERR(svn_wc__externals_gather_definitions(&new_externals,
                                                   &new_depths,
                                                   ctx->wc_ctx, local_abspath,
                                                   depth,
                                                   scratch_pool, scratch_pool));

      SVN_ERR(svn_client__handle_externals(new_externals,
                                           new_depths,
                                           repos_root_url, local_abspath,
                                           depth, timestamp_sleep, ra_session,
                                           ctx, scratch_pool));
    }


  if (ctx->notify_func2 && notify_summary)
    {
      svn_wc_notify_t *notify
        = svn_wc_create_notify(local_abspath, svn_wc_notify_update_completed,
                               scratch_pool);
      notify->kind = svn_node_none;
      notify->content_state = notify->prop_state
        = svn_wc_notify_state_inapplicable;
      notify->lock_state = svn_wc_notify_lock_state_inapplicable;
      notify->revision = revnum;
      ctx->notify_func2(ctx->notify_baton2, notify, scratch_pool);
    }


  if (result_rev)
    *result_rev = revnum;

  return SVN_NO_ERROR;
}
