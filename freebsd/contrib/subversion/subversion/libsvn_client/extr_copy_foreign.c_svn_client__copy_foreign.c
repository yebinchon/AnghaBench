
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_ra_session_t ;
typedef int svn_opt_revision_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_8__ {int cancel_baton; int cancel_func; int notify_baton2; int notify_func2; int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
struct TYPE_9__ {int rev; } ;
typedef TYPE_2__ svn_client__pathrev_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_ENTRY_EXISTS ;
 int SVN_ERR_ENTRY_NOT_FOUND ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MERGEINFO ;
 int SVN_WC__CALL_WITH_WRITE_LOCK (int ,int ,char const*,int ,int *) ;
 int TRUE ;
 int _ (char*) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int copy_foreign_dir (int *,TYPE_2__*,int ,char const*,int ,int ,int ,int ,int ,int *) ;
 int strcmp (char const*,int ) ;
 int svn_client__make_local_parents (char const*,int ,TYPE_1__*,int *) ;
 int svn_client__ra_session_from_path2 (int **,TYPE_2__**,char const*,int *,int *,int *,TYPE_1__*,int *) ;
 char* svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 char const* svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_hash_sets (int *,char const*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 int svn_path_is_url (char const*) ;
 scalar_t__ svn_prop_regular_kind ;
 scalar_t__ svn_property_kind2 (char const*) ;
 int svn_ra_check_path (int *,char*,int ,scalar_t__*,int *) ;
 int svn_ra_get_file (int *,char*,int ,int *,int *,int **,int *) ;
 int svn_stream_open_writable (int **,char const*,int *,int *) ;
 int svn_wc_add_from_disk3 (int ,char const*,int *,int ,int ,int ,int *) ;
 int svn_wc_read_kind2 (scalar_t__*,int ,char const*,int ,int ,int *) ;

svn_error_t *
svn_client__copy_foreign(const char *url,
                         const char *dst_abspath,
                         svn_opt_revision_t *peg_revision,
                         svn_opt_revision_t *revision,
                         svn_depth_t depth,
                         svn_boolean_t make_parents,
                         svn_boolean_t already_locked,
                         svn_client_ctx_t *ctx,
                         apr_pool_t *scratch_pool)
{
  svn_ra_session_t *ra_session;
  svn_client__pathrev_t *loc;
  svn_node_kind_t kind;
  svn_node_kind_t wc_kind;
  const char *dir_abspath;

  SVN_ERR_ASSERT(svn_path_is_url(url));
  SVN_ERR_ASSERT(svn_dirent_is_absolute(dst_abspath));



  SVN_ERR(svn_client__ra_session_from_path2(&ra_session, &loc,
                                            url, ((void*)0),
                                            peg_revision,
                                            revision, ctx,
                                            scratch_pool));

  SVN_ERR(svn_ra_check_path(ra_session, "", loc->rev, &kind, scratch_pool));

  if (kind != svn_node_file && kind != svn_node_dir)
    return svn_error_createf(
                SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                _("'%s' is not a valid location inside a repository"),
                url);

  SVN_ERR(svn_wc_read_kind2(&wc_kind, ctx->wc_ctx, dst_abspath, FALSE, TRUE,
                            scratch_pool));

  if (wc_kind != svn_node_none)
    {
      return svn_error_createf(
                SVN_ERR_ENTRY_EXISTS, ((void*)0),
                _("'%s' is already under version control"),
                svn_dirent_local_style(dst_abspath, scratch_pool));
    }

  dir_abspath = svn_dirent_dirname(dst_abspath, scratch_pool);
  SVN_ERR(svn_wc_read_kind2(&wc_kind, ctx->wc_ctx, dir_abspath,
                            FALSE, FALSE, scratch_pool));

  if (wc_kind == svn_node_none)
    {
      if (make_parents)
        SVN_ERR(svn_client__make_local_parents(dir_abspath, make_parents, ctx,
                                               scratch_pool));

      SVN_ERR(svn_wc_read_kind2(&wc_kind, ctx->wc_ctx, dir_abspath,
                                FALSE, FALSE, scratch_pool));
    }

  if (wc_kind != svn_node_dir)
    return svn_error_createf(
                SVN_ERR_ENTRY_NOT_FOUND, ((void*)0),
                _("Can't add '%s', because no parent directory is found"),
                svn_dirent_local_style(dst_abspath, scratch_pool));


  if (kind == svn_node_file)
    {
      svn_stream_t *target;
      apr_hash_t *props;
      apr_hash_index_t *hi;
      SVN_ERR(svn_stream_open_writable(&target, dst_abspath, scratch_pool,
                                       scratch_pool));

      SVN_ERR(svn_ra_get_file(ra_session, "", loc->rev, target, ((void*)0), &props,
                              scratch_pool));

      if (props != ((void*)0))
        for (hi = apr_hash_first(scratch_pool, props); hi;
             hi = apr_hash_next(hi))
          {
            const char *name = apr_hash_this_key(hi);

            if (svn_property_kind2(name) != svn_prop_regular_kind
                || ! strcmp(name, SVN_PROP_MERGEINFO))
              {

                svn_hash_sets(props, name, ((void*)0));
              }
          }

      if (!already_locked)
        SVN_WC__CALL_WITH_WRITE_LOCK(
              svn_wc_add_from_disk3(ctx->wc_ctx, dst_abspath, props,
                                    TRUE ,
                                    ctx->notify_func2, ctx->notify_baton2,
                                    scratch_pool),
              ctx->wc_ctx, dir_abspath, FALSE, scratch_pool);
      else
        SVN_ERR(svn_wc_add_from_disk3(ctx->wc_ctx, dst_abspath, props,
                                      TRUE ,
                                      ctx->notify_func2, ctx->notify_baton2,
                                      scratch_pool));
    }
  else
    {
      if (!already_locked)
        SVN_WC__CALL_WITH_WRITE_LOCK(
              copy_foreign_dir(ra_session, loc,
                               ctx->wc_ctx, dst_abspath,
                               depth,
                               ctx->notify_func2, ctx->notify_baton2,
                               ctx->cancel_func, ctx->cancel_baton,
                               scratch_pool),
              ctx->wc_ctx, dir_abspath, FALSE, scratch_pool);
      else
        SVN_ERR(copy_foreign_dir(ra_session, loc,
                                 ctx->wc_ctx, dst_abspath,
                                 depth,
                                 ctx->notify_func2, ctx->notify_baton2,
                                 ctx->cancel_func, ctx->cancel_baton,
                                 scratch_pool));
    }

  return SVN_NO_ERROR;
}
