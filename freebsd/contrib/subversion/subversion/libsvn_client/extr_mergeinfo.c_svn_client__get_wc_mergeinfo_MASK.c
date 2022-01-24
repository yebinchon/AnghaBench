#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/ * svn_mergeinfo_t ;
typedef  scalar_t__ svn_mergeinfo_inheritance_t ;
struct TYPE_14__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
struct TYPE_15__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_MERGEINFO_PARSE_ERROR ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 TYPE_1__* SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_mergeinfo_explicit ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_mergeinfo_inherited ; 
 scalar_t__ svn_mergeinfo_nearest_ancestor ; 
 scalar_t__ FUNC16 (char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 char* FUNC20 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC21 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC22 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC23 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC24(svn_mergeinfo_t *mergeinfo,
                             svn_boolean_t *inherited_p,
                             svn_mergeinfo_inheritance_t inherit,
                             const char *local_abspath,
                             const char *limit_abspath,
                             const char **walked_path,
                             svn_boolean_t ignore_invalid_mergeinfo,
                             svn_client_ctx_t *ctx,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  const char *walk_relpath = "";
  svn_mergeinfo_t wc_mergeinfo;
  svn_revnum_t base_revision;
  apr_pool_t *iterpool;
  svn_boolean_t inherited;

  FUNC1(FUNC10(local_abspath));
  if (limit_abspath)
    FUNC1(FUNC10(limit_abspath));

  FUNC0(FUNC21(NULL, &base_revision, NULL, NULL, NULL, NULL,
                                ctx->wc_ctx, local_abspath,
                                TRUE /* ignore_enoent */,
                                scratch_pool, scratch_pool));

  iterpool = FUNC18(scratch_pool);
  while (TRUE)
    {
      FUNC17(iterpool);

      /* Don't look for explicit mergeinfo on LOCAL_ABSPATH if we are only
         interested in inherited mergeinfo. */
      if (inherit == svn_mergeinfo_nearest_ancestor)
        {
          wc_mergeinfo = NULL;
          inherit = svn_mergeinfo_inherited;
        }
      else
        {
          /* Look for mergeinfo on LOCAL_ABSPATH.  If there isn't any and we
             want inherited mergeinfo, walk towards the root of the WC until
             we encounter either (a) an unversioned directory, or
             (b) mergeinfo.  If we encounter (b), use that inherited
             mergeinfo as our baseline. */
          svn_error_t *err = FUNC7(&wc_mergeinfo,
                                                         ctx->wc_ctx,
                                                         local_abspath,
                                                         result_pool,
                                                         iterpool);
          if ((ignore_invalid_mergeinfo || walk_relpath [0] != '\0')
              && err
              && err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR)
            {
              FUNC12(err);
              wc_mergeinfo = FUNC4(result_pool);
              break;
            }
          else
            {
              FUNC0(err);
            }
        }

      if (wc_mergeinfo == NULL &&
          inherit != svn_mergeinfo_explicit &&
          !FUNC11(local_abspath, FUNC6(local_abspath)))
        {
          svn_boolean_t is_wc_root;
          svn_boolean_t is_switched;
          svn_revnum_t parent_base_rev;
          svn_revnum_t parent_changed_rev;

          /* Don't look any higher than the limit path. */
          if (limit_abspath && FUNC5(limit_abspath, local_abspath) == 0)
            break;

          /* If we've reached the root of the working copy don't look any
             higher. */
          FUNC0(FUNC23(&is_wc_root, &is_switched, NULL,
                                    ctx->wc_ctx, local_abspath, iterpool));
          if (is_wc_root || is_switched)
            break;

          /* No explicit mergeinfo on this path.  Look higher up the
             directory tree while keeping track of what we've walked. */
          walk_relpath = FUNC20(FUNC8(local_abspath,
                                                              iterpool),
                                          walk_relpath, result_pool);
          local_abspath = FUNC9(local_abspath, scratch_pool);

          FUNC0(FUNC21(NULL, &parent_base_rev, NULL, NULL,
                                        NULL, NULL,
                                        ctx->wc_ctx, local_abspath,
                                        TRUE /* ignore_enoent */,
                                        scratch_pool, scratch_pool));

          /* ### This checks the WORKING changed_rev, so invalid on replacement
             ### not even reliable in case an ancestor was copied from a
             ### different location */
          FUNC0(FUNC22(&parent_changed_rev,
                                                NULL, NULL,
                                                ctx->wc_ctx, local_abspath,
                                                scratch_pool,
                                                scratch_pool));

          /* Look in LOCAL_ABSPATH's parent for inherited mergeinfo if
             LOCAL_ABSPATH has no base revision because it is an uncommitted
             addition, or if its base revision falls within the inclusive
             range of its parent's last changed revision to the parent's base
             revision; otherwise stop looking for inherited mergeinfo. */
          if (FUNC2(base_revision)
              && (base_revision < parent_changed_rev
                  || parent_base_rev < base_revision))
            break;

          /* We haven't yet risen above the root of the WC. */
          continue;
        }
      break;
    }

  FUNC19(iterpool);

  if (FUNC16(walk_relpath))
    {
      /* Mergeinfo is explicit. */
      inherited = FALSE;
      *mergeinfo = wc_mergeinfo;
    }
  else
    {
      /* Mergeinfo may be inherited. */
      if (wc_mergeinfo)
        {
          inherited = TRUE;
          FUNC0(FUNC13(mergeinfo,
                                                         wc_mergeinfo,
                                                         walk_relpath,
                                                         result_pool,
                                                         scratch_pool));
        }
      else
        {
          inherited = FALSE;
          *mergeinfo = NULL;
        }
    }

  if (walked_path)
    *walked_path = walk_relpath;

  /* Remove non-inheritable mergeinfo and paths mapped to empty ranges
     which may occur if WCPATH's mergeinfo is not explicit. */
  if (inherited
      && FUNC3(*mergeinfo)) /* Nothing to do for empty mergeinfo. */
    {
      FUNC0(FUNC15(mergeinfo, *mergeinfo, NULL,
                                         SVN_INVALID_REVNUM, SVN_INVALID_REVNUM,
                                         TRUE, result_pool, scratch_pool));
      FUNC14(*mergeinfo, scratch_pool);
    }

  if (inherited_p)
    *inherited_p = inherited;

  return SVN_NO_ERROR;
}