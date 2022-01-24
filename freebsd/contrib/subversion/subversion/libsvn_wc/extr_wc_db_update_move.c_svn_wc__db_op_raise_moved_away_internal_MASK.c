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
typedef  int /*<<< orphan*/  svn_wc_operation_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_version_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_action_t ;
struct TYPE_5__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_CREATE_UPDATE_MOVE_LIST ; 
 int /*<<< orphan*/  STMT_SELECT_MOVED_DESCENDANTS_SRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,TYPE_1__*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kind_map ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_conflict_reason_moved_away ; 
 int /*<<< orphan*/  svn_wc_notify_state_inapplicable ; 
 int /*<<< orphan*/  svn_wc_notify_tree_conflict ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC17(
                        svn_wc__db_wcroot_t *wcroot,
                        const char *local_relpath,
                        int src_op_depth,
                        svn_wc__db_t *db,
                        svn_wc_operation_t operation,
                        svn_wc_conflict_action_t action,
                        const svn_wc_conflict_version_t *old_version,
                        const svn_wc_conflict_version_t *new_version,
                        apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  apr_pool_t *iterpool = FUNC5(scratch_pool);

  FUNC0(FUNC12(wcroot->sdb,
                                      STMT_CREATE_UPDATE_MOVE_LIST));

  FUNC0(FUNC13(&stmt, wcroot->sdb,
                                    STMT_SELECT_MOVED_DESCENDANTS_SRC));
  FUNC0(FUNC8(stmt, "isd", wcroot->wc_id, local_relpath,
                            src_op_depth));
  FUNC0(FUNC15(&have_row, stmt));
  while(have_row)
    {
      svn_error_t *err;
      int delete_op_depth = FUNC9(stmt, 0);
      const char *src_relpath = FUNC10(stmt, 1, NULL);
      svn_node_kind_t src_kind = FUNC11(stmt, 2, kind_map);
      const char *src_repos_relpath = FUNC10(stmt, 3, NULL);
      const char *dst_relpath = FUNC10(stmt, 4, NULL);
      svn_skel_t *conflict;
      FUNC4(iterpool);

      FUNC1(src_repos_relpath != NULL);

      err = FUNC2(&conflict, wcroot, src_relpath, dst_relpath,
                                 db, old_version, new_version, operation,
                                 src_kind /* ### old kind */,
                                 src_kind /* ### new kind */,
                                 src_repos_relpath,
                                 svn_wc_conflict_reason_moved_away,
                                 action,
                                 FUNC7(src_relpath,
                                                    delete_op_depth,
                                                    iterpool),
                                 iterpool, iterpool);

      if (!err)
        err = FUNC16(wcroot, src_relpath, db,
                                   svn_wc_notify_tree_conflict,
                                   src_kind,
                                   svn_wc_notify_state_inapplicable,
                                   svn_wc_notify_state_inapplicable,
                                   conflict, NULL, scratch_pool);

      if (err)
        return FUNC3(err, FUNC14(stmt));

      FUNC0(FUNC15(&have_row, stmt));
    }
  FUNC0(FUNC14(stmt));

  FUNC6(iterpool);

  return SVN_NO_ERROR;
}