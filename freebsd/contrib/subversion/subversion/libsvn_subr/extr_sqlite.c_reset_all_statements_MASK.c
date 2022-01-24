#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nbr_statements; TYPE_2__** prepared_stmts; } ;
typedef  TYPE_1__ svn_sqlite__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {scalar_t__ needs_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_SQLITE_RESETTING_FOR_ROLLBACK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_sqlite__db_t *db,
                     svn_error_t *error_to_wrap)
{
  int i;
  svn_error_t *err;

  /* ### Should we reorder the errors in this specific case
     ### to avoid returning the normal error as top level error? */

  err = FUNC0(error_to_wrap,
                   FUNC1(SVN_ERR_SQLITE_RESETTING_FOR_ROLLBACK,
                                    NULL, NULL));

  for (i = 0; i < db->nbr_statements; i++)
    if (db->prepared_stmts[i] && db->prepared_stmts[i]->needs_reset)
      err = FUNC0(err,
                                FUNC2(db->prepared_stmts[i]));

  return err;
}