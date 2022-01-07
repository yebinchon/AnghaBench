
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int (* svn_wc_notify_func2_t ) (struct notification_adjust_baton*,TYPE_1__*,int *) ;
typedef int svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
struct TYPE_19__ {struct notification_adjust_baton* notify_baton2; int (* notify_func2 ) (struct notification_adjust_baton*,TYPE_1__*,int *) ;int cancel_baton; int * (* cancel_func ) (int ) ;int wc_ctx; } ;
typedef TYPE_3__ svn_client_ctx_t ;
struct TYPE_20__ {char* dst_abspath_or_url; scalar_t__ src_kind; int src_revnum; int * src_abspath_or_url; int src_op_revision; int src_peg_revision; int src_original; } ;
typedef TYPE_4__ svn_client__copy_pair_t ;
typedef scalar_t__ svn_boolean_t ;
struct notification_adjust_baton {char const* checkout_abspath; char const* final_abspath; struct notification_adjust_baton* inner_baton; int (* inner_func ) (struct notification_adjust_baton*,TYPE_1__*,int *) ;} ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int SVN_ERR (int *) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EXTERNALS ;
 int SVN_PROP_MERGEINFO ;
 scalar_t__ TRUE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int * apr_hash_this_val (int *) ;
 int * extend_wc_mergeinfo (char const*,int *,TYPE_3__*,int *) ;
 int notification_adjust_func (struct notification_adjust_baton*,TYPE_1__*,int *) ;
 int * resolve_pinned_externals (int **,int const*,TYPE_4__*,int *,char const*,TYPE_3__*,int *,int *) ;
 int stub1 (struct notification_adjust_baton*,TYPE_1__*,int *) ;
 int * stub2 (int ) ;
 int stub3 (struct notification_adjust_baton*,TYPE_1__*,int *) ;
 int * svn_client__checkout_internal (int *,scalar_t__*,int ,char const*,int *,int *,int ,scalar_t__,int ,int *,TYPE_3__*,int *) ;
 int * svn_client__copy_foreign (int *,char const*,int *,int *,int ,int ,scalar_t__,TYPE_3__*,int *) ;
 int * svn_client__get_repos_mergeinfo (int **,int *,int *,int ,int ,scalar_t__,int *) ;
 int * svn_client__handle_externals (int *,int *,char const*,char const*,int ,scalar_t__*,int *,TYPE_3__*,int *) ;
 int svn_depth_empty ;
 int svn_depth_infinity ;
 int svn_dirent_is_absolute (char const*) ;
 char* svn_dirent_join (char*,char const*,int *) ;
 int svn_hash_sets (int *,int ,int *) ;
 int svn_io_file_del_on_close ;
 int * svn_io_file_rename2 (char const*,char const*,int ,int *) ;
 int * svn_io_open_unique_file3 (int *,char const**,char const*,int ,int *,int *) ;
 int svn_mergeinfo_inherited ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_ra_get_file (int *,char const*,int ,int *,int *,int **,int *) ;
 int * svn_ra_get_path_relative_to_session (int *,char const**,int *,int *) ;
 int * svn_ra_get_repos_root2 (int *,char const**,int *) ;
 int * svn_stream_buffered (int *) ;
 int * svn_wc__acquire_write_lock (int *,int ,char const*,int ,int *,int *) ;
 int * svn_wc__externals_gather_definitions (int **,int **,int ,char const*,int ,int *,int *) ;
 int * svn_wc__get_tmpdir (char const**,int ,char const*,int *,int *) ;
 int * svn_wc_add_repos_file4 (int ,char const*,int *,int *,int *,int *,int *,int ,int * (*) (int ),int ,int *) ;
 int * svn_wc_copy3 (int ,char const*,char const*,scalar_t__,int * (*) (int ),int ,int *,int *,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 TYPE_1__* svn_wc_create_notify_url (int *,int ,int *) ;
 int svn_wc_notify_add ;
 int svn_wc_notify_foreign_copy_begin ;
 int * svn_wc_prop_set4 (int ,char const*,int ,int *,int ,scalar_t__,int *,int * (*) (int ),int ,int *,int *,int *) ;
 int * svn_wc_remove_from_revision_control2 (int ,char const*,int ,int ,int * (*) (int ),int ,int *) ;

__attribute__((used)) static svn_error_t *
repos_to_wc_copy_single(svn_boolean_t *timestamp_sleep,
                        svn_client__copy_pair_t *pair,
                        svn_boolean_t same_repositories,
                        svn_boolean_t ignore_externals,
                        svn_boolean_t pin_externals,
                        const apr_hash_t *externals_to_pin,
                        svn_ra_session_t *ra_session,
                        svn_client_ctx_t *ctx,
                        apr_pool_t *pool)
{
  apr_hash_t *src_mergeinfo;
  const char *dst_abspath = pair->dst_abspath_or_url;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(dst_abspath));

  if (!same_repositories && ctx->notify_func2)
    {
      svn_wc_notify_t *notify;
      notify = svn_wc_create_notify_url(
                            pair->src_abspath_or_url,
                            svn_wc_notify_foreign_copy_begin,
                            pool);
      notify->kind = pair->src_kind;
      ctx->notify_func2(ctx->notify_baton2, notify, pool);


      if (ctx->cancel_func)
        SVN_ERR(ctx->cancel_func(ctx->cancel_baton));
    }

  if (pair->src_kind == svn_node_dir)
    {
      if (same_repositories)
        {
          const char *tmpdir_abspath, *tmp_abspath;


          SVN_ERR(svn_wc__get_tmpdir(&tmpdir_abspath, ctx->wc_ctx, dst_abspath,
                                     pool, pool));

          SVN_ERR(svn_io_open_unique_file3(((void*)0), &tmp_abspath, tmpdir_abspath,
                                           svn_io_file_del_on_close, pool, pool));







          {
            svn_wc_notify_func2_t old_notify_func2 = ctx->notify_func2;
            void *old_notify_baton2 = ctx->notify_baton2;
            struct notification_adjust_baton nb;
            svn_error_t *err;

            nb.inner_func = ctx->notify_func2;
            nb.inner_baton = ctx->notify_baton2;
            nb.checkout_abspath = tmp_abspath;
            nb.final_abspath = dst_abspath;
            ctx->notify_func2 = notification_adjust_func;
            ctx->notify_baton2 = &nb;






            if (pin_externals)
              ignore_externals = TRUE;

            err = svn_client__checkout_internal(&pair->src_revnum, timestamp_sleep,
                                                pair->src_original,
                                                tmp_abspath,
                                                &pair->src_peg_revision,
                                                &pair->src_op_revision,
                                                svn_depth_infinity,
                                                ignore_externals, FALSE,
                                                ra_session, ctx, pool);

            ctx->notify_func2 = old_notify_func2;
            ctx->notify_baton2 = old_notify_baton2;

            SVN_ERR(err);
          }

          *timestamp_sleep = TRUE;





          SVN_ERR(svn_wc_copy3(ctx->wc_ctx, tmp_abspath, dst_abspath,
                               TRUE ,
                               ctx->cancel_func, ctx->cancel_baton,
                               ((void*)0), ((void*)0), pool));
          SVN_ERR(svn_wc__acquire_write_lock(((void*)0), ctx->wc_ctx, tmp_abspath,
                                             FALSE, pool, pool));
          SVN_ERR(svn_wc_remove_from_revision_control2(ctx->wc_ctx,
                                                       tmp_abspath,
                                                       FALSE, FALSE,
                                                       ctx->cancel_func,
                                                       ctx->cancel_baton,
                                                       pool));


          SVN_ERR(svn_io_file_rename2(tmp_abspath, dst_abspath, FALSE, pool));
        }
      else
        {
          *timestamp_sleep = TRUE;

          SVN_ERR(svn_client__copy_foreign(pair->src_abspath_or_url,
                                           dst_abspath,
                                           &pair->src_peg_revision,
                                           &pair->src_op_revision,
                                           svn_depth_infinity,
                                           FALSE ,
                                           TRUE ,
                                           ctx, pool));

          return SVN_NO_ERROR;
        }

      if (pin_externals)
        {
          apr_hash_t *pinned_externals;
          apr_hash_index_t *hi;
          apr_pool_t *iterpool;
          const char *repos_root_url;
          apr_hash_t *new_externals;
          apr_hash_t *new_depths;

          SVN_ERR(svn_ra_get_repos_root2(ra_session, &repos_root_url, pool));
          SVN_ERR(resolve_pinned_externals(&pinned_externals,
                                           externals_to_pin, pair,
                                           ra_session, repos_root_url,
                                           ctx, pool, pool));

          iterpool = svn_pool_create(pool);
          for (hi = apr_hash_first(pool, pinned_externals);
               hi;
               hi = apr_hash_next(hi))
            {
              const char *dst_relpath = apr_hash_this_key(hi);
              svn_string_t *externals_propval = apr_hash_this_val(hi);
              const char *local_abspath;

              svn_pool_clear(iterpool);

              local_abspath = svn_dirent_join(pair->dst_abspath_or_url,
                                              dst_relpath, iterpool);

              SVN_ERR(svn_wc_prop_set4(ctx->wc_ctx, local_abspath,
                                       SVN_PROP_EXTERNALS, externals_propval,
                                       svn_depth_empty, TRUE ,
                                       ((void*)0) ,
                                       ctx->cancel_func, ctx->cancel_baton,
                                       ((void*)0), ((void*)0),
                                       iterpool));
            }


          SVN_ERR(svn_wc__externals_gather_definitions(&new_externals,
                                                       &new_depths,
                                                       ctx->wc_ctx,
                                                       dst_abspath,
                                                       svn_depth_infinity,
                                                       iterpool, iterpool));
          SVN_ERR(svn_client__handle_externals(new_externals,
                                               new_depths,
                                               repos_root_url, dst_abspath,
                                               svn_depth_infinity,
                                               timestamp_sleep,
                                               ra_session,
                                               ctx, iterpool));
          svn_pool_destroy(iterpool);
        }
    }

  else if (pair->src_kind == svn_node_file)
    {
      apr_hash_t *new_props;
      const char *src_rel;
      svn_stream_t *new_base_contents = svn_stream_buffered(pool);

      SVN_ERR(svn_ra_get_path_relative_to_session(ra_session, &src_rel,
                                                  pair->src_abspath_or_url,
                                                  pool));


      SVN_ERR(svn_ra_get_file(ra_session, src_rel, pair->src_revnum,
                              new_base_contents,
                              &pair->src_revnum, &new_props, pool));

      if (new_props && ! same_repositories)
        svn_hash_sets(new_props, SVN_PROP_MERGEINFO, ((void*)0));

      *timestamp_sleep = TRUE;

      SVN_ERR(svn_wc_add_repos_file4(
         ctx->wc_ctx, dst_abspath,
         new_base_contents, ((void*)0), new_props, ((void*)0),
         same_repositories ? pair->src_abspath_or_url : ((void*)0),
         same_repositories ? pair->src_revnum : SVN_INVALID_REVNUM,
         ctx->cancel_func, ctx->cancel_baton,
         pool));
    }



  SVN_ERR(svn_client__get_repos_mergeinfo(
            &src_mergeinfo, ra_session,
            pair->src_abspath_or_url, pair->src_revnum,
            svn_mergeinfo_inherited, TRUE , pool));
  SVN_ERR(extend_wc_mergeinfo(dst_abspath, src_mergeinfo, ctx, pool));





  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify = svn_wc_create_notify(
                                  dst_abspath, svn_wc_notify_add, pool);
      notify->kind = pair->src_kind;
      ctx->notify_func2(ctx->notify_baton2, notify, pool);
    }

  return SVN_NO_ERROR;
}
