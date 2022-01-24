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
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  void* svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  STMT_SELECT_ACTUAL_NODE ; 
 int /*<<< orphan*/  STMT_SELECT_NODE_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  kind_map ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  presence_map ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 void* svn_node_none ; 
 int /*<<< orphan*/ * FUNC7 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 void* FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_added ; 
 scalar_t__ svn_wc__db_status_deleted ; 
 scalar_t__ svn_wc__db_status_incomplete ; 
 scalar_t__ svn_wc__db_status_normal ; 

svn_error_t *
FUNC16(svn_skel_t **conflict,
                                  svn_node_kind_t *kind,
                                  apr_hash_t **props,
                                  svn_wc__db_wcroot_t *wcroot,
                                  const char *local_relpath,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  if (kind)
    *kind = svn_node_none;
  if (props)
    *props = NULL;

  /* Check if we have a conflict in ACTUAL */
  FUNC0(FUNC13(&stmt, wcroot->sdb,
                                    STMT_SELECT_ACTUAL_NODE));
  FUNC0(FUNC8(stmt, "is", wcroot->wc_id, local_relpath));

  FUNC0(FUNC15(&have_row, stmt));

  if (have_row)
    {
      apr_size_t cfl_len;
      const void *cfl_data;

      /* svn_skel__parse doesn't copy data, so store in result_pool */
      cfl_data = FUNC9(stmt, 2, &cfl_len, result_pool);

      if (cfl_data)
        *conflict = FUNC7(cfl_data, cfl_len, result_pool);
      else
        *conflict = NULL;

      if (props)
        {
          svn_error_t *err;

          err = FUNC6(FUNC11(props, stmt, 1,
                                                              result_pool,
                                                              scratch_pool));

          if (err)
            return FUNC4(err, FUNC14(stmt));
        }
    }
  else
    *conflict = NULL;

  FUNC0(FUNC14(stmt));

  if (!have_row || kind || (props && !*props))
    {
      svn_error_t *err = NULL;
      svn_boolean_t have_info = FALSE;

      FUNC0(FUNC13(&stmt, wcroot->sdb,
                                        STMT_SELECT_NODE_INFO));

      FUNC0(FUNC8(stmt, "is", wcroot->wc_id,
                                local_relpath));

      FUNC0(FUNC15(&have_info, stmt));

      if (have_info)
        {
          if (kind)
            {
              svn_wc__db_status_t status;
              int op_depth = FUNC10(stmt, 0);

              status = FUNC12(stmt, 3, presence_map);

              if (op_depth > 0)
                err = FUNC2(&status, status);

              if (!err && (status == svn_wc__db_status_normal
                           || status == svn_wc__db_status_added
                           || status == svn_wc__db_status_deleted
                           || status == svn_wc__db_status_incomplete))
                {
                  *kind = FUNC12(stmt, 4, kind_map);
                }
            }

          /* Need props, and no props in ACTUAL? */
          if (!err && (props && !*props))
            {
              err = FUNC11(props, stmt, 14,
                                                  result_pool, scratch_pool);
            }
        }

      FUNC0(FUNC4(err, FUNC14(stmt)));

      if (!have_row && !have_info)
        {
          return FUNC5(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                                   FUNC1("The node '%s' was not found."),
                                   FUNC3(wcroot,
                                                          local_relpath,
                                                          scratch_pool));
        }
    }

  return SVN_NO_ERROR;
}