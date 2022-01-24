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
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_NODE_PROPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  presence_map ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_base_deleted ; 
 scalar_t__ svn_wc__db_status_incomplete ; 
 scalar_t__ svn_wc__db_status_normal ; 

__attribute__((used)) static svn_error_t *
FUNC13(apr_hash_t **props,
                       svn_wc__db_wcroot_t *wcroot,
                       const char *local_relpath,
                       svn_boolean_t deleted_ok,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  svn_wc__db_status_t presence;

  FUNC0(FUNC10(&stmt, wcroot->sdb, STMT_SELECT_NODE_PROPS));
  FUNC0(FUNC7(stmt, "is", wcroot->wc_id, local_relpath));

  FUNC0(FUNC12(&have_row, stmt));

  if (!have_row)
    {
      return FUNC6(SVN_ERR_WC_PATH_NOT_FOUND,
                               FUNC11(stmt),
                               FUNC2("The node '%s' was not found."),
                               FUNC4(wcroot,
                                                      local_relpath,
                                                      scratch_pool));
    }


  /* Examine the presence: */
  presence = FUNC9(stmt, 1, presence_map);

  /* For "base-deleted", it is obvious the pristine props are located
     below the current node. Fetch the NODE from the next record. */
  if (presence == svn_wc__db_status_base_deleted && deleted_ok)
    {
      FUNC0(FUNC12(&have_row, stmt));

      FUNC1(have_row);

      presence = FUNC9(stmt, 1, presence_map);
    }

  /* normal or copied: Fetch properties (during update we want
     properties for incomplete as well) */
  if (presence == svn_wc__db_status_normal
      || presence == svn_wc__db_status_incomplete)
    {
      svn_error_t *err;

      err = FUNC8(props, stmt, 0, result_pool,
                                          scratch_pool);
      FUNC0(FUNC5(err, FUNC11(stmt)));

      if (!*props)
        *props = FUNC3(result_pool);

      return SVN_NO_ERROR;
    }

  return FUNC6(SVN_ERR_WC_PATH_UNEXPECTED_STATUS,
                           FUNC11(stmt),
                           FUNC2("The node '%s' has a status that"
                             " has no properties."),
                           FUNC4(wcroot,
                                                  local_relpath,
                                                  scratch_pool));
}