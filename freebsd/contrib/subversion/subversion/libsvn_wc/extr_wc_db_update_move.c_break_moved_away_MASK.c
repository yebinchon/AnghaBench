#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_CREATE_UPDATE_MOVE_LIST ; 
 int /*<<< orphan*/  STMT_SELECT_MOVED_DESCENDANTS_SRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kind_map ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char const*,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_move_broken ; 
 int /*<<< orphan*/  svn_wc_notify_state_inapplicable ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC17(svn_wc__db_wcroot_t *wcroot,
                 svn_wc__db_t *db,
                 const char *local_relpath,
                 int parent_src_op_depth,
                 apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  apr_pool_t *iterpool;
  svn_error_t *err = NULL;

  FUNC0(FUNC10(wcroot->sdb,
                                      STMT_CREATE_UPDATE_MOVE_LIST));

  FUNC0(FUNC11(&stmt, wcroot->sdb,
                                    STMT_SELECT_MOVED_DESCENDANTS_SRC));
  FUNC0(FUNC6(stmt, "isd", wcroot->wc_id, local_relpath,
                            parent_src_op_depth));
  FUNC0(FUNC13(&have_row, stmt));

  iterpool = FUNC4(scratch_pool);
  while (have_row)
    {
      int src_op_depth = FUNC7(stmt, 0);
      const char *src_relpath = FUNC8(stmt, 1, NULL);
      svn_node_kind_t src_kind = FUNC9(stmt, 2, kind_map);
      const char *dst_relpath = FUNC8(stmt, 4, NULL);

      FUNC3(iterpool);

      err = FUNC16(wcroot, src_relpath, iterpool);

      if (!err)
        err = FUNC16(wcroot, dst_relpath, iterpool);

      if (err)
        break;

      err = FUNC2(
              FUNC14(wcroot,
                                                src_relpath, src_op_depth,
                                                dst_relpath, NULL, iterpool));

      if (err)
        break;

      err = FUNC2(
              FUNC15(wcroot, src_relpath, db,
                                   svn_wc_notify_move_broken,
                                   src_kind,
                                   svn_wc_notify_state_inapplicable,
                                   svn_wc_notify_state_inapplicable,
                                   NULL, NULL, scratch_pool));

      if (err)
        break;

      FUNC0(FUNC13(&have_row, stmt));
    }
  FUNC5(iterpool);

  return FUNC1(err, FUNC12(stmt));
}