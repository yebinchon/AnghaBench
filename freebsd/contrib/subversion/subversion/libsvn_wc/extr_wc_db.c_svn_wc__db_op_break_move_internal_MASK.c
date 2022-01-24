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
struct TYPE_5__ {int /*<<< orphan*/  sdb; int /*<<< orphan*/  wc_id; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_CLEAR_MOVED_TO_RELPATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(svn_wc__db_wcroot_t *wcroot,
                                  const char *src_relpath,
                                  int delete_op_depth,
                                  const char *dst_relpath,
                                  const svn_skel_t *work_items,
                                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  int affected;

  FUNC0(FUNC7(&stmt, wcroot->sdb,
                                    STMT_CLEAR_MOVED_TO_RELPATH));
  FUNC0(FUNC6(stmt, "isd", wcroot->wc_id, src_relpath,
                            delete_op_depth));
  FUNC0(FUNC8(&affected, stmt));

  if (affected != 1)
    return FUNC5(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, NULL,
                             FUNC1("Path '%s' is not moved"),
                             FUNC4(wcroot, src_relpath,
                                                    scratch_pool));

  FUNC0(FUNC3(wcroot, dst_relpath, scratch_pool));

  FUNC0(FUNC2(wcroot->sdb, work_items, scratch_pool));
  return SVN_NO_ERROR;
}