#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct db_variable {scalar_t__ valuep; } ;
typedef  scalar_t__ db_expr_t ;

/* Variables and functions */
 int DB_VAR_GET ; 
 int /*<<< orphan*/ * kdb_frame ; 

__attribute__((used)) static int
FUNC0(struct db_variable *vp, db_expr_t *valuep, int op)
{
	uint16_t *reg;

	if (kdb_frame == NULL)
		return (0);

	reg = (uint16_t *)((uintptr_t)kdb_frame + (db_expr_t)vp->valuep);
	if (op == DB_VAR_GET)
		*valuep = *reg;
	else
		*reg = *valuep;
	return (1);
}