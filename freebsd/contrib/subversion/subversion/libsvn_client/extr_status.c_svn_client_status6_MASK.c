#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_53__   TYPE_7__ ;
typedef  struct TYPE_52__   TYPE_6__ ;
typedef  struct TYPE_51__   TYPE_5__ ;
typedef  struct TYPE_50__   TYPE_4__ ;
typedef  struct TYPE_49__   TYPE_3__ ;
typedef  struct TYPE_48__   TYPE_2__ ;
typedef  struct TYPE_47__   TYPE_1__ ;

/* Type definitions */
struct TYPE_47__ {int /*<<< orphan*/  revision; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
struct TYPE_48__ {scalar_t__ kind; } ;
typedef  TYPE_2__ svn_opt_revision_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_49__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
struct TYPE_50__ {TYPE_3__* (* close_edit ) (void*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_4__ svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_client_status_func_t ;
struct TYPE_51__ {int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  config; } ;
typedef  TYPE_5__ svn_client_ctx_t ;
typedef  void* svn_boolean_t ;
struct status_baton {char const* anchor_abspath; char const* anchor_relpath; void* deleted_in_repos; int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/ * changelist_hash; void* real_status_baton; int /*<<< orphan*/  real_status_func; } ;
struct TYPE_52__ {scalar_t__ depth; int /*<<< orphan*/ * pool; TYPE_5__* ctx; void* set_locks_baton; int /*<<< orphan*/  ancestor; int /*<<< orphan*/  wrapped_report_baton; int /*<<< orphan*/  wrapped_reporter; } ;
typedef  TYPE_6__ report_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_53__ {scalar_t__ nelts; } ;
typedef  TYPE_7__ apr_array_header_t ;

/* Variables and functions */
 void* FALSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  SVN_ERR_ENTRY_MISSING_URL ; 
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 scalar_t__ SVN_ERR_WC_MISSING ; 
 int /*<<< orphan*/  SVN_ERR_WC_NOT_WORKING_COPY ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 TYPE_3__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_DEPTH ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_3__* FUNC4 (TYPE_5__*,int /*<<< orphan*/ *,scalar_t__,void*,void*,void*,void*,TYPE_7__ const*,char const*,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lock_fetch_reporter ; 
 TYPE_3__* FUNC5 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,void*,void*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC9 (char const**,char const*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_depth_empty ; 
 scalar_t__ svn_depth_files ; 
 scalar_t__ svn_depth_infinity ; 
 scalar_t__ svn_depth_unknown ; 
 char* FUNC10 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC12 (char const**,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (char const*) ; 
 char const* FUNC14 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 TYPE_3__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 TYPE_3__* FUNC17 (int /*<<< orphan*/ **,TYPE_7__ const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 
 scalar_t__ svn_opt_revision_head ; 
 scalar_t__ FUNC18 (char const*) ; 
 TYPE_3__* FUNC19 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,scalar_t__,TYPE_4__ const*,void*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC21 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC22 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC23 (TYPE_4__ const**,void**,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,scalar_t__,void*,void*,void*,void*,void*,TYPE_7__*,int /*<<< orphan*/ ,struct status_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC24 (void**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC25 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,TYPE_6__*,void*,scalar_t__,int,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC26 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC27 (TYPE_7__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_status_completed ; 
 TYPE_3__* FUNC28 (scalar_t__*,int /*<<< orphan*/ ,char const*,void*,void*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC29 (int /*<<< orphan*/ ,char const*,scalar_t__,void*,void*,void*,TYPE_7__*,int /*<<< orphan*/ ,struct status_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tweak_status ; 

svn_error_t *
FUNC30(svn_revnum_t *result_rev,
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
                   apr_pool_t *pool)  /* ### aka scratch_pool */
{
  struct status_baton sb;
  const char *dir, *dir_abspath;
  const char *target_abspath;
  const char *target_basename;
  apr_array_header_t *ignores;
  svn_error_t *err;
  apr_hash_t *changelist_hash = NULL;

  /* Override invalid combinations of the check_out_of_date and
     check_working_copy flags. */
  if (!check_out_of_date)
    check_working_copy = TRUE;

  if (FUNC18(path))
    return FUNC16(SVN_ERR_ILLEGAL_TARGET, NULL,
                             FUNC2("'%s' is not a local path"), path);

  if (changelists && changelists->nelts)
    FUNC1(FUNC17(&changelist_hash, changelists, pool));

  if (result_rev)
    *result_rev = SVN_INVALID_REVNUM;

  sb.real_status_func = status_func;
  sb.real_status_baton = status_baton;
  sb.deleted_in_repos = FALSE;
  sb.changelist_hash = changelist_hash;
  sb.wc_ctx = ctx->wc_ctx;

  FUNC1(FUNC12(&target_abspath, path, pool));

  if (check_out_of_date)
    {
      /* The status editor only works on directories, so get the ancestor
         if necessary */

      svn_node_kind_t kind;

      FUNC1(FUNC28(&kind, ctx->wc_ctx, target_abspath,
                                TRUE, FALSE, pool));

      /* Dir must be a working copy directory or the status editor fails */
      if (kind == svn_node_dir)
        {
          dir_abspath = target_abspath;
          target_basename = "";
          dir = path;
        }
      else
        {
          dir_abspath = FUNC11(target_abspath, pool);
          target_basename = FUNC10(target_abspath, NULL);
          dir = FUNC11(path, pool);

          if (kind == svn_node_file)
            {
              if (depth == svn_depth_empty)
                depth = svn_depth_files;
            }
          else
            {
              err = FUNC28(&kind, ctx->wc_ctx, dir_abspath,
                                      FALSE, FALSE, pool);

              FUNC15(err);

              if (err || kind != svn_node_dir)
                {
                  return FUNC16(SVN_ERR_WC_NOT_WORKING_COPY, NULL,
                                           FUNC2("'%s' is not a working copy"),
                                           FUNC14(path, pool));
                }
            }
        }
    }
  else
    {
      dir = path;
      dir_abspath = target_abspath;
    }

  if (FUNC13(dir))
    {
      sb.anchor_abspath = NULL;
      sb.anchor_relpath = NULL;
    }
  else
    {
      sb.anchor_abspath = dir_abspath;
      sb.anchor_relpath = dir;
    }

  /* Get the status edit, and use our wrapping status function/baton
     as the callback pair. */
  FUNC1(FUNC27(&ignores, ctx->config, pool));

  /* If we want to know about out-of-dateness, we crawl the working copy and
     let the RA layer drive the editor for real.  Otherwise, we just close the
     edit.  :-) */
  if (check_out_of_date)
    {
      svn_ra_session_t *ra_session;
      const char *URL;
      svn_node_kind_t kind;
      svn_boolean_t server_supports_depth;
      const svn_delta_editor_t *editor;
      void *edit_baton, *set_locks_baton;
      svn_revnum_t edit_revision = SVN_INVALID_REVNUM;

      /* Get full URL from the ANCHOR. */
      FUNC1(FUNC9(&URL, dir_abspath, ctx,
                                        pool, pool));

      if (!URL)
        return FUNC16
          (SVN_ERR_ENTRY_MISSING_URL, NULL,
           FUNC2("Entry '%s' has no URL"),
           FUNC14(dir, pool));

      /* Open a repository session to the URL. */
      FUNC1(FUNC8(&ra_session, NULL, URL,
                                                   dir_abspath, NULL,
                                                   FALSE, TRUE,
                                                   ctx, pool, pool));

      FUNC1(FUNC21(ra_session, &server_supports_depth,
                                    SVN_RA_CAPABILITY_DEPTH, pool));

      FUNC1(FUNC23(&editor, &edit_baton, &set_locks_baton,
                                        &edit_revision, ctx->wc_ctx,
                                        dir_abspath, target_basename,
                                        depth, get_all, check_working_copy,
                                        no_ignore, depth_as_sticky,
                                        server_supports_depth,
                                        ignores, tweak_status, &sb,
                                        ctx->cancel_func, ctx->cancel_baton,
                                        pool, pool));


      /* Verify that URL exists in HEAD.  If it doesn't, this can save
         us a whole lot of hassle; if it does, the cost of this
         request should be minimal compared to the size of getting
         back the average amount of "out-of-date" information. */
      FUNC1(FUNC19(ra_session, "", SVN_INVALID_REVNUM,
                                &kind, pool));
      if (kind == svn_node_none)
        {
          svn_boolean_t added;

          /* Our status target does not exist in HEAD.  If we've got
             it locally added, that's okay.  But if it was previously
             versioned, then it must have since been deleted from the
             repository.  (Note that "locally replaced" doesn't count
             as "added" in this case.)  */
          FUNC1(FUNC24(&added, ctx->wc_ctx,
                                        dir_abspath, pool));
          if (! added)
            sb.deleted_in_repos = TRUE;

          /* And now close the edit. */
          FUNC1(editor->close_edit(edit_baton, pool));
        }
      else
        {
          svn_revnum_t revnum;
          report_baton_t rb;
          svn_depth_t status_depth;

          if (revision->kind == svn_opt_revision_head)
            {
              /* Cause the revision number to be omitted from the request,
                 which implies HEAD. */
              revnum = SVN_INVALID_REVNUM;
            }
          else
            {
              /* Get a revision number for our status operation. */
              FUNC1(FUNC7(&revnum, NULL,
                                                      ctx->wc_ctx,
                                                      target_abspath,
                                                      ra_session, revision,
                                                      pool));
            }

          if (depth_as_sticky || !server_supports_depth)
            status_depth = depth;
          else
            status_depth = svn_depth_unknown; /* Use depth from WC */

          /* Do the deed.  Let the RA layer drive the status editor. */
          FUNC1(FUNC20(ra_session, &rb.wrapped_reporter,
                                    &rb.wrapped_report_baton,
                                    target_basename, revnum, status_depth,
                                    editor, edit_baton, pool));

          /* Init the report baton. */
          rb.ancestor = FUNC3(pool, URL); /* Edited later */
          rb.set_locks_baton = set_locks_baton;
          rb.ctx = ctx;
          rb.pool = pool;

          if (depth == svn_depth_unknown)
            rb.depth = svn_depth_infinity;
          else
            rb.depth = depth;

          /* Drive the reporter structure, describing the revisions
             within PATH.  When we call reporter->finish_report,
             EDITOR will be driven to describe differences between our
             working copy and HEAD. */
          FUNC1(FUNC25(ctx->wc_ctx,
                                          target_abspath,
                                          &lock_fetch_reporter, &rb,
                                          FALSE /* restore_files */,
                                          depth, (! depth_as_sticky),
                                          (! server_supports_depth),
                                          FALSE /* use_commit_times */,
                                          ctx->cancel_func, ctx->cancel_baton,
                                          NULL, NULL, pool));
        }

      if (ctx->notify_func2)
        {
          svn_wc_notify_t *notify
            = FUNC26(target_abspath,
                                   svn_wc_notify_status_completed, pool);
          notify->revision = edit_revision;
          ctx->notify_func2(ctx->notify_baton2, notify, pool);
        }

      /* If the caller wants the result revision, give it to them. */
      if (result_rev)
        *result_rev = edit_revision;
    }
  else
    {
      err = FUNC29(ctx->wc_ctx, target_abspath,
                               depth, get_all, no_ignore, FALSE, ignores,
                               tweak_status, &sb,
                               ctx->cancel_func, ctx->cancel_baton,
                               pool);

      if (err && err->apr_err == SVN_ERR_WC_MISSING)
        {
          /* This error code is checked for in svn to continue after
             this error */
          FUNC15(err);
          return FUNC16(SVN_ERR_WC_NOT_WORKING_COPY, NULL,
                               FUNC2("'%s' is not a working copy"),
                               FUNC14(path, pool));
        }

      FUNC1(err);
    }

  /* We only descend into an external if depth is svn_depth_infinity or
     svn_depth_unknown.  However, there are conceivable behaviors that
     would involve descending under other circumstances; thus, we pass
     depth anyway, so the code will DTRT if we change the conditional
     in the future.
  */
  if (FUNC0(depth) && (! ignore_externals))
    {
      apr_hash_t *external_map;
      FUNC1(FUNC22(&external_map,
                                              ctx->wc_ctx, target_abspath,
                                              pool, pool));


      FUNC1(FUNC4(ctx, external_map,
                                 depth, get_all,
                                 check_out_of_date, check_working_copy,
                                 no_ignore, changelists,
                                 sb.anchor_abspath, sb.anchor_relpath,
                                 status_func, status_baton, pool));
    }

  return SVN_NO_ERROR;
}