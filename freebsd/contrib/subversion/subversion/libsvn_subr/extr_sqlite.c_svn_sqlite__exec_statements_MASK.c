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
struct TYPE_4__ {int nbr_statements; int /*<<< orphan*/ * statement_strings; } ;
typedef  TYPE_1__ svn_sqlite__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC3(svn_sqlite__db_t *db, int stmt_idx)
{
  FUNC0(stmt_idx < db->nbr_statements);

  return FUNC2(FUNC1(db, db->statement_strings[stmt_idx]));
}