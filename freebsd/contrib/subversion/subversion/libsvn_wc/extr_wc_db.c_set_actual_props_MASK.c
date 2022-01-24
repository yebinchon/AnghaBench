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
struct TYPE_3__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_DELETE_ACTUAL_EMPTY ; 
 int /*<<< orphan*/  STMT_INSERT_ACTUAL_PROPS ; 
 int /*<<< orphan*/  STMT_UPDATE_ACTUAL_PROPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_wc__db_wcroot_t *wcroot,
                 const char *local_relpath,
                 apr_hash_t *props,
                 apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  int affected_rows;

  FUNC0(FUNC6(&stmt, wcroot->sdb,
                                    STMT_UPDATE_ACTUAL_PROPS));
  FUNC0(FUNC5(stmt, "is", wcroot->wc_id, local_relpath));
  FUNC0(FUNC3(stmt, 3, props, scratch_pool));
  FUNC0(FUNC8(&affected_rows, stmt));

  if (affected_rows == 1 || !props)
    {
      /* Perhaps the entire ACTUAL record is unneeded now? */
      if (!props && affected_rows)
        {
          FUNC0(FUNC6(&stmt, wcroot->sdb,
                                            STMT_DELETE_ACTUAL_EMPTY));
          FUNC0(FUNC5(stmt, "is", wcroot->wc_id, local_relpath));
          FUNC0(FUNC7(stmt));
        }

      return SVN_NO_ERROR; /* We are done */
    }

  /* We have to insert a row in ACTUAL */

  FUNC0(FUNC6(&stmt, wcroot->sdb,
                                    STMT_INSERT_ACTUAL_PROPS));
  FUNC0(FUNC5(stmt, "is", wcroot->wc_id, local_relpath));
  if (*local_relpath != '\0')
    FUNC0(FUNC4(stmt, 3,
                                  FUNC2(local_relpath,
                                                      scratch_pool)));
  FUNC0(FUNC3(stmt, 4, props, scratch_pool));
  return FUNC1(FUNC7(stmt));
}