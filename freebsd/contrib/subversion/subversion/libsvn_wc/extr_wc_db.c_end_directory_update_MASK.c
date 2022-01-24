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
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_UPDATE_NODE_BASE_PRESENCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  presence_map ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_incomplete ; 
 scalar_t__ svn_wc__db_status_normal ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_wc__db_wcroot_t *wcroot,
                     const char *local_relpath,
                     apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_wc__db_status_t base_status;

  FUNC0(FUNC5(&base_status, NULL, NULL, NULL,
                                            NULL, NULL, NULL, NULL, NULL,
                                            NULL, NULL, NULL, NULL, NULL, NULL,
                                            wcroot, local_relpath,
                                            scratch_pool, scratch_pool));

  if (base_status == svn_wc__db_status_normal)
    return SVN_NO_ERROR;

  FUNC1(base_status == svn_wc__db_status_incomplete);

  FUNC0(FUNC3(&stmt, wcroot->sdb,
                                    STMT_UPDATE_NODE_BASE_PRESENCE));
  FUNC0(FUNC2(stmt, "ist", wcroot->wc_id, local_relpath,
                            presence_map, svn_wc__db_status_normal));
  FUNC0(FUNC4(stmt));

  return SVN_NO_ERROR;
}