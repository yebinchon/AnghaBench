#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  STMT_HAS_LAYER_BETWEEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,int,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,TYPE_1__*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,TYPE_1__*,char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_boolean_t *recurse,
                 svn_wc__db_wcroot_t *wcroot,
                 const char *local_relpath,
                 int op_depth,
                 const char *src_relpath,
                 int src_del_depth,
                 svn_depth_t src_depth,
                 const char *dst_relpath,
                 svn_wc__db_t *db,
                 apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  svn_skel_t *conflict;
  svn_boolean_t can_bump;
  const char *src_root_relpath;

  FUNC0(FUNC11(wcroot, local_relpath, scratch_pool));

  *recurse = FALSE;

  FUNC0(FUNC5(&stmt, wcroot->sdb,
                                    STMT_HAS_LAYER_BETWEEN));

  FUNC0(FUNC4(stmt, "isdd", wcroot->wc_id, local_relpath,
                            op_depth, src_del_depth));

  FUNC0(FUNC7(&have_row, stmt));
  FUNC0(FUNC6(stmt));

  if (have_row)
    return SVN_NO_ERROR;

  if (op_depth == 0)
    FUNC0(FUNC2(&can_bump, wcroot, src_relpath,
                                     op_depth, src_depth, scratch_pool));
  else
    /* Having chosen to bump an entire BASE tree move we
       always have sufficient depth to bump subtree moves. */
    can_bump = TRUE;

  /* Are we allowed to bump */
  if (can_bump)
    {
      svn_boolean_t locked;

      FUNC0(FUNC10(&locked, wcroot,
                                                   dst_relpath,
                                                   FALSE, scratch_pool));

      if (!locked)
        can_bump = FALSE;
    }

  src_root_relpath = FUNC3(src_relpath, src_del_depth,
                                        scratch_pool);

  if (!can_bump)
    {
      FUNC0(FUNC1(wcroot, src_relpath, op_depth,
                                      src_root_relpath, dst_relpath,
                                      db, scratch_pool));

      return SVN_NO_ERROR;
    }

  FUNC0(FUNC9(&conflict, NULL, NULL,
                                            wcroot, src_root_relpath,
                                            scratch_pool, scratch_pool));

  /* ### TODO: check this is the right sort of tree-conflict? */
  if (!conflict)
    {
      /* ### TODO: verify moved_here? */

      FUNC0(FUNC11(wcroot, src_relpath, scratch_pool));

      FUNC0(FUNC8(wcroot,
                                                src_relpath, op_depth,
                                                dst_relpath, NULL, NULL,
                                                scratch_pool));

      *recurse = TRUE;
    }

  return SVN_NO_ERROR;
}