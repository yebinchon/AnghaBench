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
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_UPDATE_NODE_BASE_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  depth_map ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_wc__db_wcroot_t *wcroot,
                     const char *local_relpath,
                     svn_depth_t depth,
                     apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  int affected_rows;

  /* Flush any entries before we start monkeying the database.  */
  FUNC0(FUNC5(&stmt, wcroot->sdb,
                                    STMT_UPDATE_NODE_BASE_DEPTH));
  FUNC0(FUNC4(stmt, "iss", wcroot->wc_id, local_relpath,
                            FUNC7(depth_map, depth)));
  FUNC0(FUNC6(&affected_rows, stmt));

  if (affected_rows == 0)
    return FUNC3(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                             FUNC1("The node '%s' is not a committed directory"),
                             FUNC2(wcroot, local_relpath,
                                                    scratch_pool));

  return SVN_NO_ERROR;
}