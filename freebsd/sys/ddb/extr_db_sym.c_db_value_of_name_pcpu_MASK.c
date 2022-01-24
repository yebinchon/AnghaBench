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
typedef  int /*<<< orphan*/  tmp ;
typedef  scalar_t__ db_expr_t ;
typedef  scalar_t__ c_db_sym_t ;

/* Variables and functions */
 scalar_t__ C_DB_SYM_NULL ; 
 scalar_t__ DPCPU_START ; 
 scalar_t__ DPCPU_STOP ; 
 int curcpu ; 
 int db_cpu ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const**,scalar_t__*) ; 
 scalar_t__* dpcpu_off ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*) ; 

bool
FUNC3(const char *name, db_expr_t *valuep)
{
	static char     tmp[256];
	db_expr_t	value;
	c_db_sym_t	sym;
	int		cpu;

	if (db_cpu != -1)
		cpu = db_cpu;
	else
		cpu = curcpu;
	FUNC2(tmp, sizeof(tmp), "pcpu_entry_%s", name);
	sym = FUNC0(tmp);
	if (sym == C_DB_SYM_NULL)
		return (false);
	FUNC1(sym, &name, &value);
	if (value < DPCPU_START || value >= DPCPU_STOP)
		return (false);
	*valuep = (db_expr_t)((uintptr_t)value + dpcpu_off[cpu]);
	return (true);
}