#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
typedef  int svn_boolean_t ;
struct svn_wc__db_base_info_t {scalar_t__ kind; scalar_t__ status; scalar_t__ revnum; char* repos_relpath; scalar_t__ update_root; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  STMT_DELETE_BASE_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int TRUE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 struct svn_wc__db_base_info_t* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ **,TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,char const*,int /*<<< orphan*/ *,scalar_t__,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*,char const*) ; 
 scalar_t__ svn_depth_empty ; 
 scalar_t__ svn_depth_files ; 
 scalar_t__ svn_depth_immediates ; 
 char const* FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 char* FUNC14 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_excluded ; 
 scalar_t__ svn_wc__db_status_not_present ; 
 scalar_t__ svn_wc__db_status_server_excluded ; 

__attribute__((used)) static svn_error_t *
FUNC18(svn_wc__db_wcroot_t *wcroot,
                   const char *local_relpath,
                   svn_wc__db_status_t node_status,
                   svn_node_kind_t node_kind,
                   svn_revnum_t node_revision,
                   const char *node_repos_relpath,
                   apr_int64_t new_repos_id,
                   const char *new_repos_relpath,
                   svn_revnum_t new_rev,
                   svn_depth_t depth,
                   apr_hash_t *exclude_relpaths,
                   apr_hash_t *wcroot_iprops,
                   svn_boolean_t is_root,
                   svn_boolean_t skip_when_dir,
                   svn_wc__db_t *db,
                   apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool;
  apr_hash_t *children;
  apr_hash_index_t *hi;
  svn_boolean_t set_repos_relpath = FALSE;
  svn_depth_t depth_below_here = depth;
  apr_array_header_t *iprops = NULL;

  if (new_repos_relpath != NULL
      && FUNC8(node_repos_relpath, new_repos_relpath))
    set_repos_relpath = TRUE;

  if (wcroot_iprops)
    iprops = FUNC10(wcroot_iprops,
                           FUNC9(wcroot->abspath, local_relpath,
                                           scratch_pool));

  if (iprops
      || set_repos_relpath
      || (FUNC1(new_rev) && new_rev != node_revision))
    {
      FUNC0(FUNC7(wcroot, local_relpath,
                                                 iprops, new_rev,
                                                 set_repos_relpath,
                                                 new_repos_relpath,
                                                 new_repos_id,
                                                 scratch_pool));
    }

  /* Early out */
  if (depth <= svn_depth_empty
      || node_kind != svn_node_dir
      || node_status == svn_wc__db_status_server_excluded
      || node_status == svn_wc__db_status_excluded
      || node_status == svn_wc__db_status_not_present)
    return SVN_NO_ERROR;

  /* And now recurse over the children */

  depth_below_here = depth;

  if (depth == svn_depth_immediates || depth == svn_depth_files)
    depth_below_here = svn_depth_empty;

  iterpool = FUNC12(scratch_pool);

  FUNC0(FUNC6(&children, wcroot, local_relpath, 0,
                                 scratch_pool, iterpool));
  for (hi = FUNC2(scratch_pool, children); hi; hi = FUNC3(hi))
    {
      const char *child_basename = FUNC4(hi);
      const struct svn_wc__db_base_info_t *child_info;
      const char *child_local_relpath;
      const char *child_repos_relpath = NULL;

      FUNC11(iterpool);

      child_info = FUNC5(hi);

      if (child_info->update_root && child_info->kind == svn_node_file)
        continue; /* Skip file externals */

      if (depth < svn_depth_immediates && child_info->kind == svn_node_dir)
          continue; /* Skip directories */

      child_local_relpath = FUNC14(local_relpath, child_basename,
                                             iterpool);

      /* Don't touch nodes that can't be touched via the exclude list */
      if (FUNC10(exclude_relpaths, child_local_relpath))
          continue;

      /* If the node is still marked 'not-present', then the server did not
          re-add it.  So it's really gone in this revision, thus we remove the
          node.

          If the node is still marked 'server-excluded' and yet is not the same
          revision as new_rev, then the server did not re-add it, nor
          re-server-exclude it, so we can remove the node. */
      if (child_info->status == svn_wc__db_status_not_present
          || (child_info->status == svn_wc__db_status_server_excluded &&
              child_info->revnum != new_rev))
        {
          svn_sqlite__stmt_t *stmt;
          FUNC0(FUNC16(&stmt, wcroot->sdb,
                                    STMT_DELETE_BASE_NODE));
          FUNC0(FUNC15(stmt, "is", wcroot->wc_id, child_local_relpath));
          FUNC0(FUNC17(stmt));
          continue;
        }

      /* Derive the new URL for the current (child) entry */
      if (new_repos_relpath)
        child_repos_relpath = FUNC14(new_repos_relpath,
                                               child_basename, iterpool);

      FUNC0(FUNC18(wcroot, child_local_relpath,
                                 child_info->status,
                                 child_info->kind,
                                 child_info->revnum,
                                 child_info->repos_relpath,
                                 new_repos_id,
                                 child_repos_relpath, new_rev,
                                 depth_below_here,
                                 exclude_relpaths, wcroot_iprops,
                                 FALSE /* is_root */,
                                 (depth < svn_depth_immediates), db,
                                 iterpool));
    }

  /* Cleanup */
  FUNC13(iterpool);

  return SVN_NO_ERROR;
}