
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_24__ {int revision; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
struct TYPE_25__ {int kind; } ;
typedef TYPE_2__ svn_opt_revision_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_26__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;int wc_ctx; int cancel_baton; int cancel_func; } ;
typedef TYPE_3__ svn_client_ctx_t ;
struct TYPE_27__ {int rev; int url; } ;
typedef TYPE_4__ svn_client__pathrev_t ;
typedef void* svn_boolean_t ;
struct export_info_baton {char const* to_path; char const* native_eol; char const* origin_abspath; int exported; int notify_baton; int (* notify_func ) (int ,TYPE_1__*,int *) ;int wc_ctx; void* ignore_keywords; void* overwrite; TYPE_2__ const* revision; } ;
struct edit_baton {char const* root_path; char const* native_eol; int notify_baton; int (* notify_func ) (int ,TYPE_1__*,int *) ;int cancel_baton; int cancel_func; void* ignore_keywords; int externals; int * target_revision; void* force; int root_url; int repos_root_url; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int ENABLE_EV2_IMPL ;
 int FALSE ;
 int SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC (int ) ;
 int SVN_ERR (int *) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int SVN_ERR_RA_ILLEGAL_URL ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int _ (char*) ;
 int * append_basename_if_dir (char const**,char const*,int ,int *) ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 struct edit_baton* apr_pcalloc (int *,int) ;
 int * export_directory (char const*,char const*,struct edit_baton*,TYPE_4__*,int *,void*,void*,void*,int ,char const*,TYPE_3__*,int *) ;
 int * export_file (char const*,char const*,struct edit_baton*,TYPE_4__*,int *,void*,int *) ;
 int * export_file_ev2 (char const*,char const*,struct edit_baton*,TYPE_4__*,int *,void*,int *) ;
 int export_node ;
 int stub1 (int ,TYPE_1__*,int *) ;
 TYPE_2__* svn_cl__rev_default_to_head_or_working (TYPE_2__ const*,char const*) ;
 TYPE_2__* svn_cl__rev_default_to_peg (TYPE_2__ const*,TYPE_2__ const*) ;
 int * svn_client__ra_session_from_path2 (int **,TYPE_4__**,char const*,int *,TYPE_2__ const*,TYPE_2__ const*,TYPE_3__*,int *) ;
 int * svn_client_url_from_path2 (char const**,char const*,TYPE_3__*,int *,int *) ;
 int svn_dirent_dirname (char const*,int *) ;
 int * svn_dirent_get_absolute (char const**,char const*,int *) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 char const* svn_dirent_local_style (char const*,int *) ;
 char* svn_dirent_skip_ancestor (char const*,char const*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int * svn_io_check_path (char const*,scalar_t__*,int *) ;
 int * svn_io_make_dir_recursively (int ,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 void* svn_path_is_url (char const*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_ra_check_path (int *,char*,int ,scalar_t__*,int *) ;
 int * svn_ra_get_repos_root2 (int *,int *,int *) ;
 int * svn_wc__externals_defined_below (int **,int ,char const*,int *,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_update_completed ;
 int * svn_wc_walk_status (int ,char const*,int ,void*,void*,int ,int *,int ,struct export_info_baton*,int ,int ,int *) ;

svn_error_t *
svn_client_export5(svn_revnum_t *result_rev,
                   const char *from_path_or_url,
                   const char *to_path,
                   const svn_opt_revision_t *peg_revision,
                   const svn_opt_revision_t *revision,
                   svn_boolean_t overwrite,
                   svn_boolean_t ignore_externals,
                   svn_boolean_t ignore_keywords,
                   svn_depth_t depth,
                   const char *native_eol,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *pool)
{
  svn_revnum_t edit_revision = SVN_INVALID_REVNUM;
  svn_boolean_t from_is_url = svn_path_is_url(from_path_or_url);

  SVN_ERR_ASSERT(peg_revision != ((void*)0));
  SVN_ERR_ASSERT(revision != ((void*)0));

  if (svn_path_is_url(to_path))
    return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                             _("'%s' is not a local path"), to_path);

  peg_revision = svn_cl__rev_default_to_head_or_working(peg_revision,
                                                        from_path_or_url);
  revision = svn_cl__rev_default_to_peg(revision, peg_revision);

  if (from_is_url || ! SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(revision->kind))
    {
      svn_client__pathrev_t *loc;
      svn_ra_session_t *ra_session;
      svn_node_kind_t kind;
      const char *from_url;
      struct edit_baton *eb = apr_pcalloc(pool, sizeof(*eb));

      SVN_ERR(svn_client_url_from_path2(&from_url, from_path_or_url,
                                        ctx, pool, pool));


      SVN_ERR(svn_client__ra_session_from_path2(&ra_session, &loc,
                                                from_path_or_url, ((void*)0),
                                                peg_revision,
                                                revision, ctx, pool));

      SVN_ERR(svn_ra_get_repos_root2(ra_session, &eb->repos_root_url, pool));
      eb->root_path = to_path;
      eb->root_url = loc->url;
      eb->force = overwrite;
      eb->target_revision = &edit_revision;
      eb->externals = apr_hash_make(pool);
      eb->native_eol = native_eol;
      eb->ignore_keywords = ignore_keywords;
      eb->cancel_func = ctx->cancel_func;
      eb->cancel_baton = ctx->cancel_baton;
      eb->notify_func = ctx->notify_func2;
      eb->notify_baton = ctx->notify_baton2;

      SVN_ERR(svn_ra_check_path(ra_session, "", loc->rev, &kind, pool));

      if (kind == svn_node_file)
        {
          if (!ENABLE_EV2_IMPL)
            SVN_ERR(export_file(from_url, to_path, eb, loc, ra_session,
                                overwrite, pool));
          else
            SVN_ERR(export_file_ev2(from_url, to_path, eb, loc,
                                    ra_session, overwrite, pool));
        }
      else if (kind == svn_node_dir)
        {
          SVN_ERR(export_directory(from_url, to_path,
                                   eb, loc, ra_session, overwrite,
                                   ignore_externals, ignore_keywords, depth,
                                   native_eol, ctx, pool));
        }
      else if (kind == svn_node_none)
        {
          return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                                   _("URL '%s' doesn't exist"),
                                   from_path_or_url);
        }

    }
  else
    {
      struct export_info_baton eib;
      svn_node_kind_t kind;
      apr_hash_t *externals = ((void*)0);



      SVN_ERR(svn_dirent_get_absolute(&from_path_or_url, from_path_or_url,
                                      pool));

      SVN_ERR(svn_dirent_get_absolute(&to_path, to_path, pool));

      SVN_ERR(svn_io_check_path(from_path_or_url, &kind, pool));
      if (kind == svn_node_file)
        SVN_ERR(append_basename_if_dir(&to_path, from_path_or_url, FALSE,
                                       pool));

      eib.to_path = to_path;
      eib.revision = revision;
      eib.overwrite = overwrite;
      eib.ignore_keywords = ignore_keywords;
      eib.wc_ctx = ctx->wc_ctx;
      eib.native_eol = native_eol;
      eib.notify_func = ctx->notify_func2;
      eib.notify_baton = ctx->notify_baton2;
      eib.origin_abspath = from_path_or_url;
      eib.exported = FALSE;

      SVN_ERR(svn_wc_walk_status(ctx->wc_ctx, from_path_or_url, depth,
                                 TRUE ,
                                 TRUE ,
                                 FALSE ,
                                 ((void*)0),
                                 export_node, &eib,
                                 ctx->cancel_func, ctx->cancel_baton,
                                 pool));

      if (!eib.exported)
        return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                                 _("The node '%s' was not found."),
                                 svn_dirent_local_style(from_path_or_url,
                                                        pool));

      if (!ignore_externals)
        SVN_ERR(svn_wc__externals_defined_below(&externals, ctx->wc_ctx,
                                                from_path_or_url,
                                                pool, pool));

      if (externals && apr_hash_count(externals))
        {
          apr_pool_t *iterpool = svn_pool_create(pool);
          apr_hash_index_t *hi;

          for (hi = apr_hash_first(pool, externals);
               hi;
               hi = apr_hash_next(hi))
            {
              const char *external_abspath = apr_hash_this_key(hi);
              const char *relpath;
              const char *target_abspath;

              svn_pool_clear(iterpool);

              relpath = svn_dirent_skip_ancestor(from_path_or_url,
                                                 external_abspath);

              target_abspath = svn_dirent_join(to_path, relpath,
                                                         iterpool);


              SVN_ERR(svn_io_make_dir_recursively(
                            svn_dirent_dirname(target_abspath, iterpool),
                            iterpool));

              SVN_ERR(svn_client_export5(((void*)0),
                                         svn_dirent_join(from_path_or_url,
                                                         relpath,
                                                         iterpool),
                                         target_abspath,
                                         peg_revision, revision,
                                         TRUE, ignore_externals,
                                         ignore_keywords, depth, native_eol,
                                         ctx, iterpool));
            }

          svn_pool_destroy(iterpool);
        }
    }


  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify
        = svn_wc_create_notify(to_path,
                               svn_wc_notify_update_completed, pool);
      notify->revision = edit_revision;
      ctx->notify_func2(ctx->notify_baton2, notify, pool);
    }

  if (result_rev)
    *result_rev = edit_revision;

  return SVN_NO_ERROR;
}
