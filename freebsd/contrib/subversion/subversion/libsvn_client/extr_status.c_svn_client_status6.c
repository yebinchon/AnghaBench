
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_53__ TYPE_7__ ;
typedef struct TYPE_52__ TYPE_6__ ;
typedef struct TYPE_51__ TYPE_5__ ;
typedef struct TYPE_50__ TYPE_4__ ;
typedef struct TYPE_49__ TYPE_3__ ;
typedef struct TYPE_48__ TYPE_2__ ;
typedef struct TYPE_47__ TYPE_1__ ;


struct TYPE_47__ {int revision; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
struct TYPE_48__ {scalar_t__ kind; } ;
typedef TYPE_2__ svn_opt_revision_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_49__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef scalar_t__ svn_depth_t ;
struct TYPE_50__ {TYPE_3__* (* close_edit ) (void*,int *) ;} ;
typedef TYPE_4__ svn_delta_editor_t ;
typedef int svn_client_status_func_t ;
struct TYPE_51__ {int wc_ctx; int cancel_baton; int cancel_func; int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;int config; } ;
typedef TYPE_5__ svn_client_ctx_t ;
typedef void* svn_boolean_t ;
struct status_baton {char const* anchor_abspath; char const* anchor_relpath; void* deleted_in_repos; int wc_ctx; int * changelist_hash; void* real_status_baton; int real_status_func; } ;
struct TYPE_52__ {scalar_t__ depth; int * pool; TYPE_5__* ctx; void* set_locks_baton; int ancestor; int wrapped_report_baton; int wrapped_reporter; } ;
typedef TYPE_6__ report_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_53__ {scalar_t__ nelts; } ;
typedef TYPE_7__ apr_array_header_t ;


 void* FALSE ;
 scalar_t__ SVN_DEPTH_IS_RECURSIVE (scalar_t__) ;
 int SVN_ERR (TYPE_3__*) ;
 int SVN_ERR_ENTRY_MISSING_URL ;
 int SVN_ERR_ILLEGAL_TARGET ;
 scalar_t__ SVN_ERR_WC_MISSING ;
 int SVN_ERR_WC_NOT_WORKING_COPY ;
 int SVN_INVALID_REVNUM ;
 TYPE_3__* SVN_NO_ERROR ;
 int SVN_RA_CAPABILITY_DEPTH ;
 void* TRUE ;
 int _ (char*) ;
 int apr_pstrdup (int *,char const*) ;
 TYPE_3__* do_external_status (TYPE_5__*,int *,scalar_t__,void*,void*,void*,void*,TYPE_7__ const*,char const*,char const*,int ,void*,int *) ;
 int lock_fetch_reporter ;
 TYPE_3__* stub1 (void*,int *) ;
 int stub2 (int ,TYPE_1__*,int *) ;
 TYPE_3__* svn_client__get_revision_number (int *,int *,int ,char const*,int *,TYPE_2__ const*,int *) ;
 TYPE_3__* svn_client__open_ra_session_internal (int **,int *,char const*,char const*,int *,void*,void*,TYPE_5__*,int *,int *) ;
 TYPE_3__* svn_client_url_from_path2 (char const**,char const*,TYPE_5__*,int *,int *) ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_files ;
 scalar_t__ svn_depth_infinity ;
 scalar_t__ svn_depth_unknown ;
 char* svn_dirent_basename (char const*,int *) ;
 char* svn_dirent_dirname (char const*,int *) ;
 TYPE_3__* svn_dirent_get_absolute (char const**,char const*,int *) ;
 scalar_t__ svn_dirent_is_absolute (char const*) ;
 char const* svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_createf (int ,int *,int ,char const*) ;
 TYPE_3__* svn_hash_from_cstring_keys (int **,TYPE_7__ const*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 scalar_t__ svn_opt_revision_head ;
 scalar_t__ svn_path_is_url (char const*) ;
 TYPE_3__* svn_ra_check_path (int *,char*,int ,scalar_t__*,int *) ;
 TYPE_3__* svn_ra_do_status2 (int *,int *,int *,char const*,int ,scalar_t__,TYPE_4__ const*,void*,int *) ;
 TYPE_3__* svn_ra_has_capability (int *,void**,int ,int *) ;
 TYPE_3__* svn_wc__externals_defined_below (int **,int ,char const*,int *,int *) ;
 TYPE_3__* svn_wc__get_status_editor (TYPE_4__ const**,void**,void**,int *,int ,char const*,char const*,scalar_t__,void*,void*,void*,void*,void*,TYPE_7__*,int ,struct status_baton*,int ,int ,int *,int *) ;
 TYPE_3__* svn_wc__node_is_added (void**,int ,char const*,int *) ;
 TYPE_3__* svn_wc_crawl_revisions5 (int ,char const*,int *,TYPE_6__*,void*,scalar_t__,int,int,void*,int ,int ,int *,int *,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 TYPE_3__* svn_wc_get_default_ignores (TYPE_7__**,int ,int *) ;
 int svn_wc_notify_status_completed ;
 TYPE_3__* svn_wc_read_kind2 (scalar_t__*,int ,char const*,void*,void*,int *) ;
 TYPE_3__* svn_wc_walk_status (int ,char const*,scalar_t__,void*,void*,void*,TYPE_7__*,int ,struct status_baton*,int ,int ,int *) ;
 int tweak_status ;

svn_error_t *
svn_client_status6(svn_revnum_t *result_rev,
                   svn_client_ctx_t *ctx,
                   const char *path,
                   const svn_opt_revision_t *revision,
                   svn_depth_t depth,
                   svn_boolean_t get_all,
                   svn_boolean_t check_out_of_date,
                   svn_boolean_t check_working_copy,
                   svn_boolean_t no_ignore,
                   svn_boolean_t ignore_externals,
                   svn_boolean_t depth_as_sticky,
                   const apr_array_header_t *changelists,
                   svn_client_status_func_t status_func,
                   void *status_baton,
                   apr_pool_t *pool)
{
  struct status_baton sb;
  const char *dir, *dir_abspath;
  const char *target_abspath;
  const char *target_basename;
  apr_array_header_t *ignores;
  svn_error_t *err;
  apr_hash_t *changelist_hash = ((void*)0);



  if (!check_out_of_date)
    check_working_copy = TRUE;

  if (svn_path_is_url(path))
    return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                             _("'%s' is not a local path"), path);

  if (changelists && changelists->nelts)
    SVN_ERR(svn_hash_from_cstring_keys(&changelist_hash, changelists, pool));

  if (result_rev)
    *result_rev = SVN_INVALID_REVNUM;

  sb.real_status_func = status_func;
  sb.real_status_baton = status_baton;
  sb.deleted_in_repos = FALSE;
  sb.changelist_hash = changelist_hash;
  sb.wc_ctx = ctx->wc_ctx;

  SVN_ERR(svn_dirent_get_absolute(&target_abspath, path, pool));

  if (check_out_of_date)
    {



      svn_node_kind_t kind;

      SVN_ERR(svn_wc_read_kind2(&kind, ctx->wc_ctx, target_abspath,
                                TRUE, FALSE, pool));


      if (kind == svn_node_dir)
        {
          dir_abspath = target_abspath;
          target_basename = "";
          dir = path;
        }
      else
        {
          dir_abspath = svn_dirent_dirname(target_abspath, pool);
          target_basename = svn_dirent_basename(target_abspath, ((void*)0));
          dir = svn_dirent_dirname(path, pool);

          if (kind == svn_node_file)
            {
              if (depth == svn_depth_empty)
                depth = svn_depth_files;
            }
          else
            {
              err = svn_wc_read_kind2(&kind, ctx->wc_ctx, dir_abspath,
                                      FALSE, FALSE, pool);

              svn_error_clear(err);

              if (err || kind != svn_node_dir)
                {
                  return svn_error_createf(SVN_ERR_WC_NOT_WORKING_COPY, ((void*)0),
                                           _("'%s' is not a working copy"),
                                           svn_dirent_local_style(path, pool));
                }
            }
        }
    }
  else
    {
      dir = path;
      dir_abspath = target_abspath;
    }

  if (svn_dirent_is_absolute(dir))
    {
      sb.anchor_abspath = ((void*)0);
      sb.anchor_relpath = ((void*)0);
    }
  else
    {
      sb.anchor_abspath = dir_abspath;
      sb.anchor_relpath = dir;
    }



  SVN_ERR(svn_wc_get_default_ignores(&ignores, ctx->config, pool));




  if (check_out_of_date)
    {
      svn_ra_session_t *ra_session;
      const char *URL;
      svn_node_kind_t kind;
      svn_boolean_t server_supports_depth;
      const svn_delta_editor_t *editor;
      void *edit_baton, *set_locks_baton;
      svn_revnum_t edit_revision = SVN_INVALID_REVNUM;


      SVN_ERR(svn_client_url_from_path2(&URL, dir_abspath, ctx,
                                        pool, pool));

      if (!URL)
        return svn_error_createf
          (SVN_ERR_ENTRY_MISSING_URL, ((void*)0),
           _("Entry '%s' has no URL"),
           svn_dirent_local_style(dir, pool));


      SVN_ERR(svn_client__open_ra_session_internal(&ra_session, ((void*)0), URL,
                                                   dir_abspath, ((void*)0),
                                                   FALSE, TRUE,
                                                   ctx, pool, pool));

      SVN_ERR(svn_ra_has_capability(ra_session, &server_supports_depth,
                                    SVN_RA_CAPABILITY_DEPTH, pool));

      SVN_ERR(svn_wc__get_status_editor(&editor, &edit_baton, &set_locks_baton,
                                        &edit_revision, ctx->wc_ctx,
                                        dir_abspath, target_basename,
                                        depth, get_all, check_working_copy,
                                        no_ignore, depth_as_sticky,
                                        server_supports_depth,
                                        ignores, tweak_status, &sb,
                                        ctx->cancel_func, ctx->cancel_baton,
                                        pool, pool));






      SVN_ERR(svn_ra_check_path(ra_session, "", SVN_INVALID_REVNUM,
                                &kind, pool));
      if (kind == svn_node_none)
        {
          svn_boolean_t added;






          SVN_ERR(svn_wc__node_is_added(&added, ctx->wc_ctx,
                                        dir_abspath, pool));
          if (! added)
            sb.deleted_in_repos = TRUE;


          SVN_ERR(editor->close_edit(edit_baton, pool));
        }
      else
        {
          svn_revnum_t revnum;
          report_baton_t rb;
          svn_depth_t status_depth;

          if (revision->kind == svn_opt_revision_head)
            {


              revnum = SVN_INVALID_REVNUM;
            }
          else
            {

              SVN_ERR(svn_client__get_revision_number(&revnum, ((void*)0),
                                                      ctx->wc_ctx,
                                                      target_abspath,
                                                      ra_session, revision,
                                                      pool));
            }

          if (depth_as_sticky || !server_supports_depth)
            status_depth = depth;
          else
            status_depth = svn_depth_unknown;


          SVN_ERR(svn_ra_do_status2(ra_session, &rb.wrapped_reporter,
                                    &rb.wrapped_report_baton,
                                    target_basename, revnum, status_depth,
                                    editor, edit_baton, pool));


          rb.ancestor = apr_pstrdup(pool, URL);
          rb.set_locks_baton = set_locks_baton;
          rb.ctx = ctx;
          rb.pool = pool;

          if (depth == svn_depth_unknown)
            rb.depth = svn_depth_infinity;
          else
            rb.depth = depth;





          SVN_ERR(svn_wc_crawl_revisions5(ctx->wc_ctx,
                                          target_abspath,
                                          &lock_fetch_reporter, &rb,
                                          FALSE ,
                                          depth, (! depth_as_sticky),
                                          (! server_supports_depth),
                                          FALSE ,
                                          ctx->cancel_func, ctx->cancel_baton,
                                          ((void*)0), ((void*)0), pool));
        }

      if (ctx->notify_func2)
        {
          svn_wc_notify_t *notify
            = svn_wc_create_notify(target_abspath,
                                   svn_wc_notify_status_completed, pool);
          notify->revision = edit_revision;
          ctx->notify_func2(ctx->notify_baton2, notify, pool);
        }


      if (result_rev)
        *result_rev = edit_revision;
    }
  else
    {
      err = svn_wc_walk_status(ctx->wc_ctx, target_abspath,
                               depth, get_all, no_ignore, FALSE, ignores,
                               tweak_status, &sb,
                               ctx->cancel_func, ctx->cancel_baton,
                               pool);

      if (err && err->apr_err == SVN_ERR_WC_MISSING)
        {


          svn_error_clear(err);
          return svn_error_createf(SVN_ERR_WC_NOT_WORKING_COPY, ((void*)0),
                               _("'%s' is not a working copy"),
                               svn_dirent_local_style(path, pool));
        }

      SVN_ERR(err);
    }







  if (SVN_DEPTH_IS_RECURSIVE(depth) && (! ignore_externals))
    {
      apr_hash_t *external_map;
      SVN_ERR(svn_wc__externals_defined_below(&external_map,
                                              ctx->wc_ctx, target_abspath,
                                              pool, pool));


      SVN_ERR(do_external_status(ctx, external_map,
                                 depth, get_all,
                                 check_out_of_date, check_working_copy,
                                 no_ignore, changelists,
                                 sb.anchor_abspath, sb.anchor_relpath,
                                 status_func, status_baton, pool));
    }

  return SVN_NO_ERROR;
}
