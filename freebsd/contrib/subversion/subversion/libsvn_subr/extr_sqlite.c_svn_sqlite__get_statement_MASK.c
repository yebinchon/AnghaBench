#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ needs_reset; } ;
typedef  TYPE_1__ svn_sqlite__stmt_t ;
struct TYPE_9__ {int nbr_statements; TYPE_1__** prepared_stmts; int /*<<< orphan*/  state_pool; int /*<<< orphan*/ * statement_strings; } ;
typedef  TYPE_2__ svn_sqlite__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

svn_error_t *
FUNC5(svn_sqlite__stmt_t **stmt, svn_sqlite__db_t *db,
                          int stmt_idx)
{
  FUNC1(stmt_idx < db->nbr_statements);

  if (db->prepared_stmts[stmt_idx] == NULL)
    FUNC0(FUNC2(&db->prepared_stmts[stmt_idx], db,
                              db->statement_strings[stmt_idx],
                              db->state_pool));

  *stmt = db->prepared_stmts[stmt_idx];

  if ((*stmt)->needs_reset)
    return FUNC3(FUNC4(*stmt));

  return SVN_NO_ERROR;
}