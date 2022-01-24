#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  (* svn_wc_notify_func2_t ) (struct notification_adjust_baton*,TYPE_1__*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_19__ {struct notification_adjust_baton* notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (struct notification_adjust_baton*,TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/ * (* cancel_func ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_3__ svn_client_ctx_t ;
struct TYPE_20__ {char* dst_abspath_or_url; scalar_t__ src_kind; int /*<<< orphan*/  src_revnum; int /*<<< orphan*/ * src_abspath_or_url; int /*<<< orphan*/  src_op_revision; int /*<<< orphan*/  src_peg_revision; int /*<<< orphan*/  src_original; } ;
typedef  TYPE_4__ svn_client__copy_pair_t ;
typedef  scalar_t__ svn_boolean_t ;
struct notification_adjust_baton {char const* checkout_abspath; char const* final_abspath; struct notification_adjust_baton* inner_baton; int /*<<< orphan*/  (* inner_func ) (struct notification_adjust_baton*,TYPE_1__*,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_EXTERNALS ; 
 int /*<<< orphan*/  SVN_PROP_MERGEINFO ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct notification_adjust_baton*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,TYPE_4__*,int /*<<< orphan*/ *,char const*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct notification_adjust_baton*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct notification_adjust_baton*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_empty ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 int /*<<< orphan*/  FUNC16 (char const*) ; 
 char* FUNC17 (char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_on_close ; 
 int /*<<< orphan*/ * FUNC19 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_mergeinfo_inherited ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC29 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC30 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC31 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ * (*) (int /*<<< orphan*/ ),int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC32 (int /*<<< orphan*/ ,char const*,char const*,scalar_t__,int /*<<< orphan*/ * (*) (int /*<<< orphan*/ ),int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC33 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC34 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_add ; 
 int /*<<< orphan*/  svn_wc_notify_foreign_copy_begin ; 
 int /*<<< orphan*/ * FUNC35 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ * (*) (int /*<<< orphan*/ ),int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC36 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ * (*) (int /*<<< orphan*/ ),int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC37(svn_boolean_t *timestamp_sleep,
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

  FUNC1(FUNC16(dst_abspath));

  if (!same_repositories && ctx->notify_func2)
    {
      svn_wc_notify_t *notify;
      notify = FUNC34(
                            pair->src_abspath_or_url,
                            svn_wc_notify_foreign_copy_begin,
                            pool);
      notify->kind = pair->src_kind;
      ctx->notify_func2(ctx->notify_baton2, notify, pool);

      /* Allow a theoretical cancel to get through. */
      if (ctx->cancel_func)
        FUNC0(ctx->cancel_func(ctx->cancel_baton));
    }

  if (pair->src_kind == svn_node_dir)
    {
      if (same_repositories)
        {
          const char *tmpdir_abspath, *tmp_abspath;

          /* Find a temporary location in which to check out the copy source. */
          FUNC0(FUNC30(&tmpdir_abspath, ctx->wc_ctx, dst_abspath,
                                     pool, pool));

          FUNC0(FUNC20(NULL, &tmp_abspath, tmpdir_abspath,
                                           svn_io_file_del_on_close, pool, pool));

          /* Make a new checkout of the requested source. While doing so,
           * resolve pair->src_revnum to an actual revision number in case it
           * was until now 'invalid' meaning 'head'.  Ask this function not to
           * sleep for timestamps, by passing a sleep_needed output param.
           * Send notifications for all nodes except the root node, and adjust
           * them to refer to the destination rather than this temporary path. */
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

            /* Avoid a chicken-and-egg problem:
             * If pinning externals we'll need to adjust externals
             * properties before checking out any externals.
             * But copy needs to happen before pinning because else there
             * are no svn:externals properties to pin. */
            if (pin_externals)
              ignore_externals = TRUE;

            err = FUNC12(&pair->src_revnum, timestamp_sleep,
                                                pair->src_original,
                                                tmp_abspath,
                                                &pair->src_peg_revision,
                                                &pair->src_op_revision,
                                                svn_depth_infinity,
                                                ignore_externals, FALSE,
                                                ra_session, ctx, pool);

            ctx->notify_func2 = old_notify_func2;
            ctx->notify_baton2 = old_notify_baton2;

            FUNC0(err);
          }

          *timestamp_sleep = TRUE;

          /* Schedule dst_path for addition in parent, with copy history.
             Don't send any notification here.
             Then remove the temporary checkout's .svn dir in preparation for
             moving the rest of it into the final destination. */
          FUNC0(FUNC32(ctx->wc_ctx, tmp_abspath, dst_abspath,
                               TRUE /* metadata_only */,
                               ctx->cancel_func, ctx->cancel_baton,
                               NULL, NULL, pool));
          FUNC0(FUNC28(NULL, ctx->wc_ctx, tmp_abspath,
                                             FALSE, pool, pool));
          FUNC0(FUNC36(ctx->wc_ctx,
                                                       tmp_abspath,
                                                       FALSE, FALSE,
                                                       ctx->cancel_func,
                                                       ctx->cancel_baton,
                                                       pool));

          /* Move the temporary disk tree into place. */
          FUNC0(FUNC19(tmp_abspath, dst_abspath, FALSE, pool));
        }
      else
        {
          *timestamp_sleep = TRUE;

          FUNC0(FUNC13(pair->src_abspath_or_url,
                                           dst_abspath,
                                           &pair->src_peg_revision,
                                           &pair->src_op_revision,
                                           svn_depth_infinity,
                                           FALSE /* make_parents */,
                                           TRUE /* already_locked */,
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

          FUNC0(FUNC26(ra_session, &repos_root_url, pool));
          FUNC0(FUNC8(&pinned_externals,
                                           externals_to_pin, pair,
                                           ra_session, repos_root_url,
                                           ctx, pool, pool));

          iterpool = FUNC22(pool);
          for (hi = FUNC2(pool, pinned_externals);
               hi;
               hi = FUNC3(hi))
            {
              const char *dst_relpath = FUNC4(hi);
              svn_string_t *externals_propval = FUNC5(hi);
              const char *local_abspath;

              FUNC21(iterpool);

              local_abspath = FUNC17(pair->dst_abspath_or_url,
                                              dst_relpath, iterpool);
              /* ### use a work queue? */
              FUNC0(FUNC35(ctx->wc_ctx, local_abspath,
                                       SVN_PROP_EXTERNALS, externals_propval,
                                       svn_depth_empty, TRUE /* skip_checks */,
                                       NULL  /* changelist_filter */,
                                       ctx->cancel_func, ctx->cancel_baton,
                                       NULL, NULL, /* no extra notification */
                                       iterpool));
            }

          /* Now update all externals in the newly created copy. */
          FUNC0(FUNC29(&new_externals,
                                                       &new_depths,
                                                       ctx->wc_ctx,
                                                       dst_abspath,
                                                       svn_depth_infinity,
                                                       iterpool, iterpool));
          FUNC0(FUNC15(new_externals,
                                               new_depths,
                                               repos_root_url, dst_abspath,
                                               svn_depth_infinity,
                                               timestamp_sleep,
                                               ra_session,
                                               ctx, iterpool));
          FUNC23(iterpool);
        }
    } /* end directory case */

  else if (pair->src_kind == svn_node_file)
    {
      apr_hash_t *new_props;
      const char *src_rel;
      svn_stream_t *new_base_contents = FUNC27(pool);

      FUNC0(FUNC25(ra_session, &src_rel,
                                                  pair->src_abspath_or_url,
                                                  pool));
      /* Fetch the file content. While doing so, resolve pair->src_revnum
       * to an actual revision number if it's 'invalid' meaning 'head'. */
      FUNC0(FUNC24(ra_session, src_rel, pair->src_revnum,
                              new_base_contents,
                              &pair->src_revnum, &new_props, pool));

      if (new_props && ! same_repositories)
        FUNC18(new_props, SVN_PROP_MERGEINFO, NULL);

      *timestamp_sleep = TRUE;

      FUNC0(FUNC31(
         ctx->wc_ctx, dst_abspath,
         new_base_contents, NULL, new_props, NULL,
         same_repositories ? pair->src_abspath_or_url : NULL,
         same_repositories ? pair->src_revnum : SVN_INVALID_REVNUM,
         ctx->cancel_func, ctx->cancel_baton,
         pool));
    }

  /* Record the implied mergeinfo (before the notification callback
     is invoked for the root node). */
  FUNC0(FUNC14(
            &src_mergeinfo, ra_session,
            pair->src_abspath_or_url, pair->src_revnum,
            svn_mergeinfo_inherited, TRUE /*squelch_incapable*/, pool));
  FUNC0(FUNC6(dst_abspath, src_mergeinfo, ctx, pool));

  /* Do our own notification for the root node, even if we could possibly
     have delegated it.  See also issue #1552.

     ### Maybe this notification should mention the mergeinfo change. */
  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify = FUNC33(
                                  dst_abspath, svn_wc_notify_add, pool);
      notify->kind = pair->src_kind;
      ctx->notify_func2(ctx->notify_baton2, notify, pool);
    }

  return SVN_NO_ERROR;
}