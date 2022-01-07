
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int revision; int lock_state; int prop_state; int content_state; scalar_t__ kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_ra_reporter3_t ;
typedef int svn_opt_revision_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_config_t ;
struct TYPE_11__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;int cancel_baton; int cancel_func; int wc_ctx; int conflict_baton2; int conflict_func2; scalar_t__ config; } ;
typedef TYPE_2__ svn_client_ctx_t ;
struct TYPE_12__ {int url; int rev; int repos_uuid; int repos_root_url; } ;
typedef TYPE_3__ svn_client__pathrev_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_CONFIG_CATEGORY_CONFIG ;
 int SVN_CONFIG_OPTION_DIFF3_CMD ;
 int SVN_CONFIG_OPTION_PRESERVED_CF_EXTS ;
 int SVN_CONFIG_OPTION_USE_COMMIT_TIMES ;
 int SVN_CONFIG_SECTION_HELPERS ;
 int SVN_CONFIG_SECTION_MISCELLANY ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_CLIENT_FILE_EXTERNAL_OVERWRITE_VERSIONED ;
 int SVN_ERR_WC_BAD_PATH ;
 int SVN_ERR_WC_PATH_FOUND ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int stub1 (int ,TYPE_1__*,int *) ;
 int svn_config_get (int *,char const**,int ,int ,char*) ;
 int svn_config_get_bool (int *,int *,int ,int ,int ) ;
 int * svn_cstring_split (char const*,char*,int ,int *) ;
 int svn_depth_unknown ;
 char* svn_dirent_basename (char const*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_dirent_is_ancestor (char const*,char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ,...) ;
 int * svn_hash_gets (scalar_t__,int ) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 scalar_t__ svn_node_unknown ;
 int svn_path_cstring_to_utf8 (char const**,char const*,int *) ;
 int svn_ra_do_switch3 (int *,int const**,void**,int ,char const*,int ,int ,int ,int ,int const*,void*,int *,int *) ;
 int svn_ra_get_inherited_props (int *,int **,char*,int ,int *,int *) ;
 int svn_ra_reparent (int *,int ,int *) ;
 int svn_uri_dirname (int ,int *) ;
 int svn_wc__crawl_file_external (int ,char const*,int const*,void*,int ,int ,int ,int ,int (*) (int ,TYPE_1__*,int *),int ,int *) ;
 int svn_wc__get_file_external_editor (int const**,void**,int *,int ,char const*,char const*,int ,int ,int ,int *,int ,char const*,int const*,char const*,char const*,int const*,int const*,int ,int ,int ,int ,int (*) (int ,TYPE_1__*,int *),int ,int *,int *) ;
 int svn_wc__get_wcroot (char const**,int ,char const*,int *,int *) ;
 int svn_wc__read_external_info (scalar_t__*,int *,int *,int *,int *,int ,char const*,char const*,int ,int *,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_lock_state_inapplicable ;
 int svn_wc_notify_state_inapplicable ;
 int svn_wc_notify_update_completed ;
 int svn_wc_read_kind2 (scalar_t__*,int ,char const*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
switch_file_external(const char *local_abspath,
                     const svn_client__pathrev_t *switch_loc,
                     const char *record_url,
                     const svn_opt_revision_t *record_peg_revision,
                     const svn_opt_revision_t *record_revision,
                     const char *def_dir_abspath,
                     svn_ra_session_t *ra_session,
                     svn_client_ctx_t *ctx,
                     apr_pool_t *scratch_pool)
{
  svn_config_t *cfg = ctx->config
                      ? svn_hash_gets(ctx->config, SVN_CONFIG_CATEGORY_CONFIG)
                      : ((void*)0);
  svn_boolean_t use_commit_times;
  const char *diff3_cmd;
  const char *preserved_exts_str;
  const apr_array_header_t *preserved_exts;
  svn_node_kind_t kind, external_kind;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));


  SVN_ERR(svn_config_get_bool(cfg, &use_commit_times,
                              SVN_CONFIG_SECTION_MISCELLANY,
                              SVN_CONFIG_OPTION_USE_COMMIT_TIMES, FALSE));


  svn_config_get(cfg, &diff3_cmd, SVN_CONFIG_SECTION_HELPERS,
                 SVN_CONFIG_OPTION_DIFF3_CMD, ((void*)0));

  if (diff3_cmd != ((void*)0))
    SVN_ERR(svn_path_cstring_to_utf8(&diff3_cmd, diff3_cmd, scratch_pool));



  svn_config_get(cfg, &preserved_exts_str, SVN_CONFIG_SECTION_MISCELLANY,
                 SVN_CONFIG_OPTION_PRESERVED_CF_EXTS, "");
  preserved_exts = *preserved_exts_str
    ? svn_cstring_split(preserved_exts_str, "\n\r\t\v ", FALSE, scratch_pool)
    : ((void*)0);

  {
    const char *wcroot_abspath;

    SVN_ERR(svn_wc__get_wcroot(&wcroot_abspath, ctx->wc_ctx, local_abspath,
                               scratch_pool, scratch_pool));





    if (!svn_dirent_is_ancestor(wcroot_abspath, def_dir_abspath))
        return svn_error_createf(
                        SVN_ERR_WC_BAD_PATH, ((void*)0),
                        _("Cannot insert a file external defined on '%s' "
                          "into the working copy '%s'."),
                        svn_dirent_local_style(def_dir_abspath,
                                               scratch_pool),
                        svn_dirent_local_style(wcroot_abspath,
                                               scratch_pool));
  }

  SVN_ERR(svn_wc_read_kind2(&kind, ctx->wc_ctx, local_abspath,
                            TRUE, FALSE, scratch_pool));

  SVN_ERR(svn_wc__read_external_info(&external_kind, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                     ctx->wc_ctx, local_abspath, local_abspath,
                                     TRUE, scratch_pool, scratch_pool));





  if (kind != svn_node_none && kind != svn_node_unknown)
    {
      if (external_kind != svn_node_file)
        {
          return svn_error_createf(
              SVN_ERR_CLIENT_FILE_EXTERNAL_OVERWRITE_VERSIONED, 0,
             _("The file external from '%s' cannot overwrite the existing "
               "versioned item at '%s'"),
             switch_loc->url,
             svn_dirent_local_style(local_abspath, scratch_pool));
        }
    }
  else
    {
      svn_node_kind_t disk_kind;

      SVN_ERR(svn_io_check_path(local_abspath, &disk_kind, scratch_pool));

      if (disk_kind == svn_node_file || disk_kind == svn_node_dir)
        return svn_error_createf(SVN_ERR_WC_PATH_FOUND, ((void*)0),
                                 _("The file external '%s' can not be "
                                   "created because the node exists."),
                                 svn_dirent_local_style(local_abspath,
                                                        scratch_pool));
    }

  {
    const svn_ra_reporter3_t *reporter;
    void *report_baton;
    const svn_delta_editor_t *switch_editor;
    void *switch_baton;
    svn_revnum_t revnum;
    apr_array_header_t *inherited_props;
    const char *target = svn_dirent_basename(local_abspath, scratch_pool);


    SVN_ERR(svn_ra_get_inherited_props(ra_session, &inherited_props, "",
                                       switch_loc->rev,
                                       scratch_pool, scratch_pool));

    SVN_ERR(svn_ra_reparent(ra_session,
                            svn_uri_dirname(switch_loc->url, scratch_pool),
                            scratch_pool));

    SVN_ERR(svn_wc__get_file_external_editor(&switch_editor, &switch_baton,
                                             &revnum, ctx->wc_ctx,
                                             local_abspath,
                                             def_dir_abspath,
                                             switch_loc->url,
                                             switch_loc->repos_root_url,
                                             switch_loc->repos_uuid,
                                             inherited_props,
                                             use_commit_times,
                                             diff3_cmd, preserved_exts,
                                             def_dir_abspath,
                                             record_url,
                                             record_peg_revision,
                                             record_revision,
                                             ctx->conflict_func2,
                                             ctx->conflict_baton2,
                                             ctx->cancel_func,
                                             ctx->cancel_baton,
                                             ctx->notify_func2,
                                             ctx->notify_baton2,
                                             scratch_pool, scratch_pool));



    SVN_ERR(svn_ra_do_switch3(ra_session, &reporter, &report_baton,
                              switch_loc->rev,
                              target, svn_depth_unknown, switch_loc->url,
                              FALSE ,
                              TRUE ,
                              switch_editor, switch_baton,
                              scratch_pool, scratch_pool));

    SVN_ERR(svn_wc__crawl_file_external(ctx->wc_ctx, local_abspath,
                                        reporter, report_baton,
                                        TRUE, use_commit_times,
                                        ctx->cancel_func, ctx->cancel_baton,
                                        ctx->notify_func2, ctx->notify_baton2,
                                        scratch_pool));

    if (ctx->notify_func2)
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
  }

  return SVN_NO_ERROR;
}
