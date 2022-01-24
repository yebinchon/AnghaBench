#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_DEPTH_NODE ; 
 int /*<<< orphan*/  STMT_SELECT_OP_DEPTH_MOVED_TO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC15(const char **move_src_relpath,
                                  const char **move_dst_relpath,
                                  const char **delete_relpath,
                                  svn_wc__db_wcroot_t *wcroot,
                                  const char *local_relpath,
                                  int op_depth,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  int delete_op_depth;
  const char *relpath = local_relpath;
  const char *dst_relpath;

  FUNC1(local_relpath[0]); /* Not valid on the WC root */

  if (move_src_relpath)
    *move_src_relpath = NULL;
  if (move_dst_relpath)
    *move_dst_relpath = NULL;
  if (delete_relpath)
    *delete_relpath = NULL;

  FUNC0(FUNC12(&stmt, wcroot->sdb,
                                    STMT_SELECT_OP_DEPTH_MOVED_TO));
  FUNC0(FUNC9(stmt, "isd", wcroot->wc_id, relpath, op_depth));

  FUNC0(FUNC14(&have_row, stmt));

  if (!have_row)
    {
      return FUNC6(SVN_ERR_WC_PATH_NOT_FOUND,
                               FUNC13(stmt),
                               FUNC2("Node '%s' is not shadowed"),
                               FUNC4(wcroot, local_relpath,
                                                      scratch_pool));
    }

  delete_op_depth = FUNC10(stmt, 0);
  dst_relpath = FUNC11(stmt, 1, scratch_pool);

  FUNC0(FUNC13(stmt));

  while (!dst_relpath && have_row)
    {
      relpath = FUNC7(relpath, scratch_pool);

      if (FUNC5(relpath) < delete_op_depth)
        break;

      FUNC0(FUNC12(&stmt, wcroot->sdb,
                                        STMT_SELECT_DEPTH_NODE));
      FUNC0(FUNC9(stmt, "isd", wcroot->wc_id, relpath,
                                delete_op_depth));

      FUNC0(FUNC14(&have_row, stmt));

      if (have_row)
        dst_relpath = FUNC11(stmt, 13, scratch_pool);

      FUNC0(FUNC13(stmt));
    }

  if (dst_relpath)
    {
      if (move_src_relpath)
        *move_src_relpath = FUNC3(result_pool, relpath);

      if (move_dst_relpath)
        *move_dst_relpath = FUNC3(result_pool, dst_relpath);

      if (delete_relpath)
        *delete_relpath = FUNC8(local_relpath, delete_op_depth,
                                             result_pool);
    }

  return SVN_NO_ERROR;
}