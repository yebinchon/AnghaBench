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
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  STMT_SELECT_ACTUAL_PROPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,TYPE_1__*,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(apr_hash_t **props,
                               svn_wc__db_wcroot_t *wcroot,
                               const char *local_relpath,
                               apr_pool_t *result_pool,
                               apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  svn_error_t *err = NULL;

  FUNC0(FUNC7(&stmt, wcroot->sdb,
                                    STMT_SELECT_ACTUAL_PROPS));
  FUNC0(FUNC4(stmt, "is", wcroot->wc_id, local_relpath));
  FUNC0(FUNC9(&have_row, stmt));

  if (have_row && !FUNC5(stmt, 0))
    {
      err = FUNC6(props, stmt, 0,
                                          result_pool, scratch_pool);
    }
  else
    have_row = FALSE;

  FUNC0(FUNC3(err, FUNC8(stmt)));

  if (have_row)
    return SVN_NO_ERROR;

  /* No local changes. Return the pristine props for this node.  */
  FUNC0(FUNC2(props, wcroot, local_relpath, FALSE,
                                 result_pool, scratch_pool));
  if (*props == NULL)
    {
      /* Pristine properties are not defined for this node.
         ### we need to determine whether this node is in a state that
         ### allows for ACTUAL properties (ie. not deleted). for now,
         ### just say all nodes, no matter the state, have at least an
         ### empty set of props.  */
      *props = FUNC1(result_pool);
    }

  return SVN_NO_ERROR;
}