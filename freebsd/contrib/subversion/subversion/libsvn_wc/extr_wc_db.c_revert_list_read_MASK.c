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
struct TYPE_3__ {int /*<<< orphan*/  sdb; int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  STMT_DELETE_REVERT_LIST ; 
 int /*<<< orphan*/  STMT_SELECT_REVERT_LIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int TRUE ; 
 int /*<<< orphan*/  kind_map ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  svn_node_unknown ; 
 int /*<<< orphan*/ * FUNC2 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC14(svn_boolean_t *reverted,
                 const apr_array_header_t **marker_paths,
                 svn_boolean_t *copied_here,
                 svn_node_kind_t *kind,
                 svn_wc__db_wcroot_t *wcroot,
                 const char *local_relpath,
                 svn_wc__db_t *db,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  *reverted = FALSE;
  *marker_paths = NULL;
  *copied_here = FALSE;
  *kind = svn_node_unknown;

  FUNC0(FUNC9(&stmt, wcroot->sdb,
                                    STMT_SELECT_REVERT_LIST));
  FUNC0(FUNC3(stmt, "s", local_relpath));
  FUNC0(FUNC11(&have_row, stmt));
  if (have_row)
    {
      svn_boolean_t is_actual = FUNC5(stmt, 0);
      svn_boolean_t another_row = FALSE;

      if (is_actual)
        {
          apr_size_t conflict_len;
          const void *conflict_data;

          conflict_data = FUNC4(stmt, 5, &conflict_len,
                                                  scratch_pool);
          if (conflict_data)
            {
              svn_skel_t *conflicts = FUNC2(conflict_data,
                                                      conflict_len,
                                                      scratch_pool);

              FUNC0(FUNC13(marker_paths,
                                                    db, wcroot->abspath,
                                                    conflicts,
                                                    result_pool,
                                                    scratch_pool));
            }

          if (!FUNC7(stmt, 1)) /* notify */
            *reverted = TRUE;

          FUNC0(FUNC11(&another_row, stmt));
        }

      if (!is_actual || another_row)
        {
          *reverted = TRUE;
          if (!FUNC7(stmt, 4)) /* repos_id */
            {
              int op_depth = FUNC6(stmt, 3);
              *copied_here = (op_depth == FUNC1(local_relpath));
            }
          *kind = FUNC8(stmt, 2, kind_map);
        }

    }
  FUNC0(FUNC10(stmt));

  if (have_row)
    {
      FUNC0(FUNC9(&stmt, wcroot->sdb,
                                        STMT_DELETE_REVERT_LIST));
      FUNC0(FUNC3(stmt, "s", local_relpath));
      FUNC0(FUNC12(stmt));
    }

  return SVN_NO_ERROR;
}