#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  revision; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
struct TYPE_25__ {int /*<<< orphan*/  kind; } ;
typedef  TYPE_2__ svn_opt_revision_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
struct TYPE_26__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; } ;
typedef  TYPE_3__ svn_client_ctx_t ;
struct TYPE_27__ {int /*<<< orphan*/  rev; int /*<<< orphan*/  url; } ;
typedef  TYPE_4__ svn_client__pathrev_t ;
typedef  void* svn_boolean_t ;
struct export_info_baton {char const* to_path; char const* native_eol; char const* origin_abspath; int /*<<< orphan*/  exported; int /*<<< orphan*/  notify_baton; int /*<<< orphan*/  (* notify_func ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  wc_ctx; void* ignore_keywords; void* overwrite; TYPE_2__ const* revision; } ;
struct edit_baton {char const* root_path; char const* native_eol; int /*<<< orphan*/  notify_baton; int /*<<< orphan*/  (* notify_func ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; void* ignore_keywords; int /*<<< orphan*/  externals; int /*<<< orphan*/ * target_revision; void* force; int /*<<< orphan*/  root_url; int /*<<< orphan*/  repos_root_url; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE_EV2_IMPL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 int /*<<< orphan*/  SVN_ERR_RA_ILLEGAL_URL ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 struct edit_baton* FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC11 (char const*,char const*,struct edit_baton*,TYPE_4__*,int /*<<< orphan*/ *,void*,void*,void*,int /*<<< orphan*/ ,char const*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (char const*,char const*,struct edit_baton*,TYPE_4__*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char const*,char const*,struct edit_baton*,TYPE_4__*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  export_node ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC15 (TYPE_2__ const*,char const*) ; 
 TYPE_2__* FUNC16 (TYPE_2__ const*,TYPE_2__ const*) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ **,TYPE_4__**,char const*,int /*<<< orphan*/ *,TYPE_2__ const*,TYPE_2__ const*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (char const**,char const*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (char const**,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC21 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC22 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC23 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC25 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 
 void* FUNC27 (char const*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC31 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC33 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC34 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_update_completed ; 
 int /*<<< orphan*/ * FUNC35 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct export_info_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC36(svn_revnum_t *result_rev,
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
  svn_boolean_t from_is_url = FUNC27(from_path_or_url);

  FUNC2(peg_revision != NULL);
  FUNC2(revision != NULL);

  if (FUNC27(to_path))
    return FUNC24(SVN_ERR_ILLEGAL_TARGET, NULL,
                             FUNC3("'%s' is not a local path"), to_path);

  peg_revision = FUNC15(peg_revision,
                                                        from_path_or_url);
  revision = FUNC16(revision, peg_revision);

  if (from_is_url || ! FUNC0(revision->kind))
    {
      svn_client__pathrev_t *loc;
      svn_ra_session_t *ra_session;
      svn_node_kind_t kind;
      const char *from_url;
      struct edit_baton *eb = FUNC10(pool, sizeof(*eb));

      FUNC1(FUNC18(&from_url, from_path_or_url,
                                        ctx, pool, pool));

      /* Get the RA connection. */
      FUNC1(FUNC17(&ra_session, &loc,
                                                from_path_or_url, NULL,
                                                peg_revision,
                                                revision, ctx, pool));

      FUNC1(FUNC32(ra_session, &eb->repos_root_url, pool));
      eb->root_path = to_path;
      eb->root_url = loc->url;
      eb->force = overwrite;
      eb->target_revision = &edit_revision;
      eb->externals = FUNC7(pool);
      eb->native_eol = native_eol;
      eb->ignore_keywords = ignore_keywords;
      eb->cancel_func = ctx->cancel_func;
      eb->cancel_baton = ctx->cancel_baton;
      eb->notify_func = ctx->notify_func2;
      eb->notify_baton = ctx->notify_baton2;

      FUNC1(FUNC31(ra_session, "", loc->rev, &kind, pool));

      if (kind == svn_node_file)
        {
          if (!ENABLE_EV2_IMPL)
            FUNC1(FUNC12(from_url, to_path, eb, loc, ra_session,
                                overwrite, pool));
          else
            FUNC1(FUNC13(from_url, to_path, eb, loc,
                                    ra_session, overwrite, pool));
        }
      else if (kind == svn_node_dir)
        {
          FUNC1(FUNC11(from_url, to_path,
                                   eb, loc, ra_session, overwrite,
                                   ignore_externals, ignore_keywords, depth,
                                   native_eol, ctx, pool));
        }
      else if (kind == svn_node_none)
        {
          return FUNC24(SVN_ERR_RA_ILLEGAL_URL, NULL,
                                   FUNC3("URL '%s' doesn't exist"),
                                   from_path_or_url);
        }
      /* kind == svn_node_unknown not handled */
    }
  else
    {
      struct export_info_baton eib;
      svn_node_kind_t kind;
      apr_hash_t *externals = NULL;

      /* This is a working copy export. */
      /* just copy the contents of the working copy into the target path. */
      FUNC1(FUNC20(&from_path_or_url, from_path_or_url,
                                      pool));

      FUNC1(FUNC20(&to_path, to_path, pool));

      FUNC1(FUNC25(from_path_or_url, &kind, pool));

      /* ### [JAF] If something already exists on disk at the destination path,
       * the behaviour depends on the node kinds of the source and destination
       * and on the FORCE flag.  The intention (I guess) is to follow the
       * semantics of svn_client_export5(), semantics that are not fully
       * documented but would be something like:
       *
       * -----------+---------------------------------------------------------
       *        Src | DIR                 FILE                SPECIAL
       * Dst (disk) +---------------------------------------------------------
       * NONE       | simple copy         simple copy         (as src=file?)
       * DIR        | merge if forced [2] inside if root [1]  (as src=file?)
       * FILE       | err                 overwr if forced[3] (as src=file?)
       * SPECIAL    | ???                 ???                 ???
       * -----------+---------------------------------------------------------
       *
       * [1] FILE onto DIR case: If this file is the root of the copy and thus
       *     the only node to be copied, then copy it as a child of the
       *     directory TO, applying these same rules again except that if this
       *     case occurs again (the child path is already a directory) then
       *     error out.  If this file is not the root of the copy (it is
       *     reached by recursion), then error out.
       *
       * [2] DIR onto DIR case.  If the 'FORCE' flag is true then copy the
       *     source's children inside the target dir, else error out.  When
       *     copying the children, apply the same set of rules, except in the
       *     FILE onto DIR case error out like in note [1].
       *
       * [3] If the 'FORCE' flag is true then overwrite the destination file
       *     else error out.
       *
       * The reality (apparently, looking at the code) is somewhat different.
       * For a start, to detect the source kind, it looks at what is on disk
       * rather than the versioned working or base node.
       */
      if (kind == svn_node_file)
        FUNC1(FUNC4(&to_path, from_path_or_url, FALSE,
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

      FUNC1(FUNC35(ctx->wc_ctx, from_path_or_url, depth,
                                 TRUE /* get_all */,
                                 TRUE /* no_ignore */,
                                 FALSE /* ignore_text_mods */,
                                 NULL,
                                 export_node, &eib,
                                 ctx->cancel_func, ctx->cancel_baton,
                                 pool));

      if (!eib.exported)
        return FUNC24(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                                 FUNC3("The node '%s' was not found."),
                                 FUNC22(from_path_or_url,
                                                        pool));

      if (!ignore_externals)
        FUNC1(FUNC33(&externals, ctx->wc_ctx,
                                                from_path_or_url,
                                                pool, pool));

      if (externals && FUNC5(externals))
        {
          apr_pool_t *iterpool = FUNC29(pool);
          apr_hash_index_t *hi;

          for (hi = FUNC6(pool, externals);
               hi;
               hi = FUNC8(hi))
            {
              const char *external_abspath = FUNC9(hi);
              const char *relpath;
              const char *target_abspath;

              FUNC28(iterpool);

              relpath = FUNC23(from_path_or_url,
                                                 external_abspath);

              target_abspath = FUNC21(to_path, relpath,
                                                         iterpool);

              /* Ensure that the parent directory exists */
              FUNC1(FUNC26(
                            FUNC19(target_abspath, iterpool),
                            iterpool));

              FUNC1(FUNC36(NULL,
                                         FUNC21(from_path_or_url,
                                                         relpath,
                                                         iterpool),
                                         target_abspath,
                                         peg_revision, revision,
                                         TRUE, ignore_externals,
                                         ignore_keywords, depth, native_eol,
                                         ctx, iterpool));
            }

          FUNC30(iterpool);
        }
    }


  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify
        = FUNC34(to_path,
                               svn_wc_notify_update_completed, pool);
      notify->revision = edit_revision;
      ctx->notify_func2(ctx->notify_baton2, notify, pool);
    }

  if (result_rev)
    *result_rev = edit_revision;

  return SVN_NO_ERROR;
}