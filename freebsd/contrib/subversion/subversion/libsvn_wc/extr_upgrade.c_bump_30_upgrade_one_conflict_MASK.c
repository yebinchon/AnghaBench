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
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_sqlite__db_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_UPGRADE_30_SET_CONFLICT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,char const*,char const*,char const*,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_wc__db_t *wc_db,
                             const char *wcroot_abspath,
                             svn_sqlite__stmt_t *stmt,
                             svn_sqlite__db_t *sdb,
                             apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt_store;
  svn_stringbuf_t *skel_data;
  svn_skel_t *conflict_data;
  apr_int64_t wc_id = FUNC5(stmt, 0);
  const char *local_relpath = FUNC6(stmt, 1, NULL);
  const char *conflict_old = FUNC6(stmt, 2, NULL);
  const char *conflict_wrk = FUNC6(stmt, 3, NULL);
  const char *conflict_new = FUNC6(stmt, 4, NULL);
  const char *prop_reject = FUNC6(stmt, 5, NULL);
  apr_size_t tree_conflict_size;
  const char *tree_conflict_data = FUNC4(stmt, 6,
                                           &tree_conflict_size, NULL);

  FUNC0(FUNC9(&conflict_data,
                                                 wc_db, wcroot_abspath,
                                                 local_relpath,
                                                 conflict_old,
                                                 conflict_wrk,
                                                 conflict_new,
                                                 prop_reject,
                                                 tree_conflict_data,
                                                 tree_conflict_size,
                                                 scratch_pool, scratch_pool));

  FUNC1(conflict_data != NULL);

  skel_data = FUNC2(conflict_data, scratch_pool);

  FUNC0(FUNC7(&stmt_store, sdb,
                                    STMT_UPGRADE_30_SET_CONFLICT));
  FUNC0(FUNC3(stmt_store, "isb", wc_id, local_relpath,
                            skel_data->data, skel_data->len));
  FUNC0(FUNC8(stmt_store));

  return SVN_NO_ERROR;
}