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
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
struct TYPE_4__ {int nbr_statements; int /*<<< orphan*/ ** prepared_stmts; int /*<<< orphan*/  state_pool; } ;
typedef  TYPE_1__ svn_sqlite__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;

/* Variables and functions */
 int STMT_INTERNAL_LAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * internal_statements ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_sqlite__stmt_t **stmt, svn_sqlite__db_t *db,
                       int stmt_idx)
{
  /* The internal statements are stored after the registered statements */
  int prep_idx = db->nbr_statements + stmt_idx;
  FUNC1(stmt_idx < STMT_INTERNAL_LAST);

  if (db->prepared_stmts[prep_idx] == NULL)
    FUNC0(FUNC2(&db->prepared_stmts[prep_idx], db,
                              internal_statements[stmt_idx],
                              db->state_pool));

  *stmt = db->prepared_stmts[prep_idx];

  return SVN_NO_ERROR;
}