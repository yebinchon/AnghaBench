
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int revision; int lock_state; int prop_state; int content_state; int kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_ra_reporter3_t ;
typedef int svn_opt_revision_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_delta_editor_t ;
typedef int svn_config_t ;
struct TYPE_20__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;int wc_ctx; int cancel_baton; int cancel_func; scalar_t__ config; } ;
typedef TYPE_2__ svn_client_ctx_t ;
struct TYPE_21__ {char const* repos_root_url; char const* url; int rev; } ;
typedef TYPE_3__ svn_client__pathrev_t ;
typedef scalar_t__ svn_boolean_t ;
struct svn_client__dirent_fetcher_baton_t {char const* anchor_url; int target_revision; int * ra_session; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 scalar_t__ FALSE ;
 int SVN_CONFIG_CATEGORY_CONFIG ;
 int SVN_CONFIG_OPTION_DIFF3_CMD ;
 int SVN_CONFIG_OPTION_PRESERVED_CF_EXTS ;
 int SVN_CONFIG_OPTION_USE_COMMIT_TIMES ;
 int SVN_CONFIG_SECTION_HELPERS ;
 int SVN_CONFIG_SECTION_MISCELLANY ;
 scalar_t__ SVN_DEPTH_IS_RECURSIVE (int ) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_CLIENT_UNRELATED_RESOURCES ;
 int SVN_ERR_ENTRY_MISSING_URL ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int SVN_ERR_WC_INVALID_SWITCH ;
 int * SVN_NO_ERROR ;
 int SVN_RA_CAPABILITY_DEPTH ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int * apr_hash_make (int *) ;
 int * record_conflict ;
 scalar_t__ strcmp (char const*,char const*) ;
 int stub1 (int ,TYPE_1__*,int *) ;
 int svn_client__dirent_fetcher ;
 int svn_client__get_youngest_common_ancestor (TYPE_3__**,TYPE_3__*,TYPE_3__*,int *,TYPE_2__*,int *,int *) ;
 int svn_client__handle_externals (int *,int *,char const*,char const*,int ,scalar_t__*,int *,TYPE_2__*,int *) ;
 int svn_client__ra_session_from_path2 (int **,TYPE_3__**,char const*,char const*,int const*,int const*,TYPE_2__*,int *) ;
 int svn_client__wc_node_get_base (TYPE_3__**,char const*,int ,int *,int *) ;
 int svn_config_get (int *,char const**,int ,int ,char*) ;
 int svn_config_get_bool (int *,scalar_t__*,int ,int ,scalar_t__) ;
 int * svn_cstring_split (char const*,char*,scalar_t__,int *) ;
 int svn_depth_exclude ;
 int svn_depth_infinity ;
 int svn_depth_unknown ;
 char* svn_dirent_basename (char const*,int *) ;
 char const* svn_dirent_dirname (char const*,int *) ;
 char const* svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,...) ;
 int * svn_hash_gets (scalar_t__,int ) ;
 int svn_hash_sets (int *,char const*,int *) ;
 scalar_t__ svn_node_dir ;
 int svn_node_none ;
 int svn_path_cstring_to_utf8 (char const**,char const*,int *) ;
 char* svn_path_url_add_component2 (char const*,char*,int *) ;
 int svn_ra_do_switch3 (int *,int const**,void**,int ,char const*,int ,char const*,scalar_t__,scalar_t__,int const*,void*,int *,int *) ;
 int svn_ra_get_inherited_props (int *,int **,char*,int ,int *,int *) ;
 int svn_ra_has_capability (int *,scalar_t__*,int ,int *) ;
 int svn_ra_reparent (int *,char const*,int *) ;
 int svn_uri__is_ancestor (char const*,char const*) ;
 int svn_wc__externals_gather_definitions (int **,int **,int ,char const*,int ,int *,int *) ;
 int svn_wc__get_switch_editor (int const**,void**,int *,int ,char const*,char const*,char const*,int *,scalar_t__,int ,scalar_t__,scalar_t__,scalar_t__,char const*,int *,int ,struct svn_client__dirent_fetcher_baton_t*,int *,int *,int *,int *,int ,int ,int (*) (int ,TYPE_1__*,int *),int ,int *,int *) ;
 int svn_wc__is_wcroot (scalar_t__*,int ,char const*,int *) ;
 int svn_wc__node_get_url (char const**,int ,char const*,int *,int *) ;
 int svn_wc__node_has_working (scalar_t__*,int ,char const*,int *) ;
 int svn_wc_crawl_revisions5 (int ,char const*,int const*,void*,scalar_t__,int ,int,int,scalar_t__,int ,int ,int (*) (int ,TYPE_1__*,int *),int ,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_crop_tree2 (int ,char const*,int ,int ,int ,int (*) (int ,TYPE_1__*,int *),int ,int *) ;
 int svn_wc_exclude (int ,char const*,int ,int ,int (*) (int ,TYPE_1__*,int *),int ,int *) ;
 int svn_wc_notify_lock_state_inapplicable ;
 int svn_wc_notify_state_inapplicable ;
 int svn_wc_notify_update_completed ;
 int svn_wc_read_kind2 (scalar_t__*,int ,char const*,scalar_t__,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
switch_internal(svn_revnum_t *result_rev,
                apr_hash_t *conflicted_paths,
                const char *local_abspath,
                const char *anchor_abspath,
                const char *switch_url,
                const svn_opt_revision_t *peg_revision,
                const svn_opt_revision_t *revision,
                svn_depth_t depth,
                svn_boolean_t depth_is_sticky,
                svn_boolean_t ignore_externals,
                svn_boolean_t allow_unver_obstructions,
                svn_boolean_t ignore_ancestry,
                svn_boolean_t *timestamp_sleep,
                svn_client_ctx_t *ctx,
                apr_pool_t *pool)
{
  const svn_ra_reporter3_t *reporter;
  void *report_baton;
  const char *anchor_url, *target;
  svn_client__pathrev_t *switch_loc;
  svn_ra_session_t *ra_session;
  svn_revnum_t revnum;
  const char *diff3_cmd;
  apr_hash_t *wcroot_iprops;
  apr_array_header_t *inherited_props;
  svn_boolean_t use_commit_times;
  const svn_delta_editor_t *switch_editor;
  void *switch_edit_baton;
  const char *preserved_exts_str;
  apr_array_header_t *preserved_exts;
  svn_boolean_t server_supports_depth;
  struct svn_client__dirent_fetcher_baton_t dfb;
  svn_config_t *cfg = ctx->config
                      ? svn_hash_gets(ctx->config, SVN_CONFIG_CATEGORY_CONFIG)
                      : ((void*)0);


  if (depth == svn_depth_unknown)
    depth_is_sticky = FALSE;


  if (depth == svn_depth_exclude)
    return svn_error_createf(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                             _("Cannot both exclude and switch a path"));


  svn_config_get(cfg, &diff3_cmd, SVN_CONFIG_SECTION_HELPERS,
                 SVN_CONFIG_OPTION_DIFF3_CMD, ((void*)0));

  if (diff3_cmd != ((void*)0))
    SVN_ERR(svn_path_cstring_to_utf8(&diff3_cmd, diff3_cmd, pool));


  SVN_ERR(svn_config_get_bool(cfg, &use_commit_times,
                              SVN_CONFIG_SECTION_MISCELLANY,
                              SVN_CONFIG_OPTION_USE_COMMIT_TIMES, FALSE));

  {
    svn_boolean_t has_working;
    SVN_ERR(svn_wc__node_has_working(&has_working, ctx->wc_ctx, local_abspath,
                                     pool));

    if (has_working)
      return svn_error_createf(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                               _("Cannot switch '%s' because it is not in the "
                                 "repository yet"),
                               svn_dirent_local_style(local_abspath, pool));
  }



  svn_config_get(cfg, &preserved_exts_str, SVN_CONFIG_SECTION_MISCELLANY,
                 SVN_CONFIG_OPTION_PRESERVED_CF_EXTS, "");
  preserved_exts = *preserved_exts_str
    ? svn_cstring_split(preserved_exts_str, "\n\r\t\v ", FALSE, pool)
    : ((void*)0);


  SVN_ERR_ASSERT(switch_url && (switch_url[0] != '\0'));

  if (strcmp(local_abspath, anchor_abspath))
    target = svn_dirent_basename(local_abspath, pool);
  else
    target = "";

  SVN_ERR(svn_wc__node_get_url(&anchor_url, ctx->wc_ctx, anchor_abspath,
                               pool, pool));
  if (! anchor_url)
    return svn_error_createf(SVN_ERR_ENTRY_MISSING_URL, ((void*)0),
                             _("Directory '%s' has no URL"),
                             svn_dirent_local_style(anchor_abspath, pool));


  if (depth_is_sticky && depth < svn_depth_infinity)
    {
      svn_node_kind_t target_kind;

      if (depth == svn_depth_exclude)
        {
          SVN_ERR(svn_wc_exclude(ctx->wc_ctx,
                                 local_abspath,
                                 ctx->cancel_func, ctx->cancel_baton,
                                 ctx->notify_func2, ctx->notify_baton2,
                                 pool));


          return SVN_NO_ERROR;
        }

      SVN_ERR(svn_wc_read_kind2(&target_kind, ctx->wc_ctx, local_abspath,
                                TRUE, TRUE, pool));

      if (target_kind == svn_node_dir)
        SVN_ERR(svn_wc_crop_tree2(ctx->wc_ctx, local_abspath, depth,
                                  ctx->cancel_func, ctx->cancel_baton,
                                  ctx->notify_func2, ctx->notify_baton2,
                                  pool));
    }


  SVN_ERR(svn_client__ra_session_from_path2(&ra_session, &switch_loc,
                                            switch_url, anchor_abspath,
                                            peg_revision, revision,
                                            ctx, pool));



  if (! svn_uri__is_ancestor(switch_loc->repos_root_url, anchor_url))
    return svn_error_createf(SVN_ERR_WC_INVALID_SWITCH, ((void*)0),
                             _("'%s'\nis not the same repository as\n'%s'"),
                             anchor_url, switch_loc->repos_root_url);






  if (! ignore_ancestry)
    {
      svn_client__pathrev_t *target_base_loc, *yca;

      SVN_ERR(svn_client__wc_node_get_base(&target_base_loc, local_abspath,
                                           ctx->wc_ctx, pool, pool));

      if (!target_base_loc)
        yca = ((void*)0);
      else
        {
          SVN_ERR(svn_client__get_youngest_common_ancestor(
                  &yca, switch_loc, target_base_loc, ra_session, ctx,
                  pool, pool));
        }
      if (! yca)
        return svn_error_createf(SVN_ERR_CLIENT_UNRELATED_RESOURCES, ((void*)0),
                                 _("'%s' shares no common ancestry with '%s'"),
                                 switch_url,
                                 svn_dirent_local_style(local_abspath, pool));
    }

  wcroot_iprops = apr_hash_make(pool);





  if (strcmp(switch_loc->repos_root_url, switch_loc->url) != 0)
    {
      svn_boolean_t wc_root;
      svn_boolean_t needs_iprop_cache = TRUE;

      SVN_ERR(svn_wc__is_wcroot(&wc_root, ctx->wc_ctx, local_abspath,
                                pool));



      if (!wc_root)
        {



          const char *target_parent_url;
          const char *unswitched_url;



          SVN_ERR(svn_wc__node_get_url(&target_parent_url, ctx->wc_ctx,
                                       svn_dirent_dirname(local_abspath,
                                                          pool),
                                       pool, pool));
          unswitched_url = svn_path_url_add_component2(
            target_parent_url,
            svn_dirent_basename(local_abspath, pool),
            pool);





          if (strcmp(unswitched_url, switch_loc->url) == 0)
            needs_iprop_cache = FALSE;
      }


      if (needs_iprop_cache)
        {
          SVN_ERR(svn_ra_get_inherited_props(ra_session, &inherited_props,
                                             "", switch_loc->rev, pool,
                                             pool));
          svn_hash_sets(wcroot_iprops, local_abspath, inherited_props);
        }
    }

  SVN_ERR(svn_ra_reparent(ra_session, anchor_url, pool));



  SVN_ERR(svn_ra_has_capability(ra_session, &server_supports_depth,
                                SVN_RA_CAPABILITY_DEPTH, pool));

  dfb.ra_session = ra_session;
  dfb.anchor_url = anchor_url;
  dfb.target_revision = switch_loc->rev;

  SVN_ERR(svn_wc__get_switch_editor(&switch_editor, &switch_edit_baton,
                                    &revnum, ctx->wc_ctx, anchor_abspath,
                                    target, switch_loc->url, wcroot_iprops,
                                    use_commit_times, depth,
                                    depth_is_sticky, allow_unver_obstructions,
                                    server_supports_depth,
                                    diff3_cmd, preserved_exts,
                                    svn_client__dirent_fetcher, &dfb,
                                    conflicted_paths ? record_conflict : ((void*)0),
                                    conflicted_paths,
                                    ((void*)0), ((void*)0),
                                    ctx->cancel_func, ctx->cancel_baton,
                                    ctx->notify_func2, ctx->notify_baton2,
                                    pool, pool));



  SVN_ERR(svn_ra_do_switch3(ra_session, &reporter, &report_baton,
                            switch_loc->rev,
                            target,
                            depth_is_sticky ? depth : svn_depth_unknown,
                            switch_loc->url,
                            FALSE ,
                            ignore_ancestry,
                            switch_editor, switch_edit_baton,
                            pool, pool));



  *timestamp_sleep = TRUE;




  SVN_ERR(svn_wc_crawl_revisions5(ctx->wc_ctx, local_abspath, reporter,
                                  report_baton, TRUE,
                                  depth, (! depth_is_sticky),
                                  (! server_supports_depth),
                                  use_commit_times,
                                  ctx->cancel_func, ctx->cancel_baton,
                                  ctx->notify_func2, ctx->notify_baton2,
                                  pool));




  if (SVN_DEPTH_IS_RECURSIVE(depth) && (! ignore_externals))
    {
      apr_hash_t *new_externals;
      apr_hash_t *new_depths;
      SVN_ERR(svn_wc__externals_gather_definitions(&new_externals,
                                                   &new_depths,
                                                   ctx->wc_ctx, local_abspath,
                                                   depth, pool, pool));

      SVN_ERR(svn_client__handle_externals(new_externals,
                                           new_depths,
                                           switch_loc->repos_root_url,
                                           local_abspath,
                                           depth, timestamp_sleep, ra_session,
                                           ctx, pool));
    }


  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify
        = svn_wc_create_notify(anchor_abspath, svn_wc_notify_update_completed,
                               pool);
      notify->kind = svn_node_none;
      notify->content_state = notify->prop_state
        = svn_wc_notify_state_inapplicable;
      notify->lock_state = svn_wc_notify_lock_state_inapplicable;
      notify->revision = revnum;
      ctx->notify_func2(ctx->notify_baton2, notify, pool);
    }


  if (result_rev)
    *result_rev = revnum;

  return SVN_NO_ERROR;
}
