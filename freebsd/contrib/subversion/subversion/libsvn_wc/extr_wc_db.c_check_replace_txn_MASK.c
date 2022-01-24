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
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  STMT_SELECT_NODE_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  presence_map ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 char const* FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_base_deleted ; 
 scalar_t__ svn_wc__db_status_excluded ; 
 scalar_t__ svn_wc__db_status_normal ; 
 scalar_t__ svn_wc__db_status_not_present ; 
 scalar_t__ svn_wc__db_status_server_excluded ; 

__attribute__((used)) static svn_error_t *
FUNC13(svn_boolean_t *is_replace_root_p,
                  svn_boolean_t *base_replace_p,
                  svn_boolean_t *is_replace_p,
                  svn_wc__db_wcroot_t *wcroot,
                  const char *local_relpath,
                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  svn_boolean_t is_replace = FALSE;
  int replaced_op_depth;
  svn_wc__db_status_t replaced_status;

  /* Our caller initialized the output values to FALSE */

  FUNC0(FUNC9(&stmt, wcroot->sdb,
                                    STMT_SELECT_NODE_INFO));

  FUNC0(FUNC6(stmt, "is", wcroot->wc_id, local_relpath));

  FUNC0(FUNC11(&have_row, stmt));

  if (!have_row)
    return FUNC3(SVN_ERR_WC_PATH_NOT_FOUND,
                             FUNC10(stmt),
                             FUNC1("The node '%s' was not found."),
                             FUNC2(wcroot, local_relpath,
                                                    scratch_pool));

  {
    svn_wc__db_status_t status;

    status = FUNC8(stmt, 3, presence_map);

    if (status != svn_wc__db_status_normal)
      return FUNC4(FUNC10(stmt));
  }

  FUNC0(FUNC11(&have_row, stmt));

  if (!have_row)
    return FUNC4(FUNC10(stmt));

  replaced_status = FUNC8(stmt, 3, presence_map);

  /* If the layer below the add describes a not present or a deleted node,
     this is not a replacement. Deleted can only occur if an ancestor is
     the delete root. */
  if (replaced_status != svn_wc__db_status_not_present
      && replaced_status != svn_wc__db_status_excluded
      && replaced_status != svn_wc__db_status_server_excluded
      && replaced_status != svn_wc__db_status_base_deleted)
    {
      is_replace = TRUE;
      if (is_replace_p)
        *is_replace_p = TRUE;
    }

  replaced_op_depth = FUNC7(stmt, 0);

  if (base_replace_p)
    {
      int op_depth = FUNC7(stmt, 0);

      while (op_depth != 0 && have_row)
        {
          FUNC0(FUNC11(&have_row, stmt));

          if (have_row)
            op_depth = FUNC7(stmt, 0);
        }

      if (have_row && op_depth == 0)
        {
          svn_wc__db_status_t base_status;

          base_status = FUNC8(stmt, 3, presence_map);

          *base_replace_p = (base_status != svn_wc__db_status_not_present);
        }
    }

  FUNC0(FUNC10(stmt));

  if (!is_replace_root_p || !is_replace)
    return SVN_NO_ERROR;

  if (replaced_status != svn_wc__db_status_base_deleted)
    {
      int parent_op_depth;

      /* Check the current op-depth of the parent to see if we are a replacement
         root */
      FUNC0(FUNC6(stmt, "is", wcroot->wc_id,
                                FUNC5(local_relpath,
                                                    scratch_pool)));

      FUNC0(FUNC12(stmt)); /* Parent must exist as 'normal' */

      parent_op_depth = FUNC7(stmt, 0);

      if (parent_op_depth >= replaced_op_depth)
        {
          /* Did we replace inside our directory? */

          *is_replace_root_p = (parent_op_depth == replaced_op_depth);
          FUNC0(FUNC10(stmt));
          return SVN_NO_ERROR;
        }

      FUNC0(FUNC11(&have_row, stmt));

      if (have_row)
        parent_op_depth = FUNC7(stmt, 0);

      FUNC0(FUNC10(stmt));

      if (!have_row)
        *is_replace_root_p = TRUE; /* Parent is no replacement */
      else if (parent_op_depth < replaced_op_depth)
        *is_replace_root_p = TRUE; /* Parent replaces a lower layer */
      /*else // No replacement root */
  }

  return SVN_NO_ERROR;
}