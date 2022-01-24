#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_INSTALL_WORKING_NODE_FOR_DELETE ; 
 int /*<<< orphan*/  STMT_SELECT_LOWEST_WORKING_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  kind_map ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_wc__db_wcroot_t *wcroot,
                        const char *local_relpath,
                        svn_node_kind_t kind,
                        int op_depth,
                        apr_pool_t *scratch_pool)
{
  svn_boolean_t have_row;
  svn_sqlite__stmt_t *stmt;
  int parent_op_depth;
  const char *parent_relpath = FUNC2(local_relpath, scratch_pool);

  FUNC1(local_relpath[0]);

  FUNC0(FUNC5(&stmt, wcroot->sdb,
                                    STMT_SELECT_LOWEST_WORKING_NODE));
  FUNC0(FUNC3(stmt, "isd", wcroot->wc_id, parent_relpath,
                            op_depth));
  FUNC0(FUNC7(&have_row, stmt));
  if (have_row)
    parent_op_depth = FUNC4(stmt, 0);
  FUNC0(FUNC6(stmt));
  if (have_row)
    {
      int existing_op_depth;

      FUNC0(FUNC3(stmt, "isd", wcroot->wc_id, local_relpath,
                                op_depth));
      FUNC0(FUNC7(&have_row, stmt));
      if (have_row)
        existing_op_depth = FUNC4(stmt, 0);
      FUNC0(FUNC6(stmt));
      if (!have_row || parent_op_depth < existing_op_depth)
        {
          FUNC0(FUNC5(&stmt, wcroot->sdb,
                              STMT_INSTALL_WORKING_NODE_FOR_DELETE));
          FUNC0(FUNC3(stmt, "isdst", wcroot->wc_id,
                                    local_relpath, parent_op_depth,
                                    parent_relpath, kind_map, kind));
          FUNC0(FUNC8(NULL, stmt));
        }
    }

  return SVN_NO_ERROR;
}