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
typedef  int /*<<< orphan*/  db_expr_t ;
typedef  scalar_t__ c_db_sym_t ;

/* Variables and functions */
 scalar_t__ C_DB_SYM_NULL ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const**,int /*<<< orphan*/ *) ; 

bool
FUNC2(const char *name, db_expr_t *valuep)
{
	c_db_sym_t	sym;

	sym = FUNC0(name);
	if (sym == C_DB_SYM_NULL)
	    return (false);
	FUNC1(sym, &name, valuep);
	return (true);
}