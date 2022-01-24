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
typedef  scalar_t__ db_strategy_t ;
typedef  scalar_t__ db_expr_t ;
typedef  scalar_t__ db_addr_t ;
typedef  int /*<<< orphan*/  c_db_sym_t ;

/* Variables and functions */
 scalar_t__ DB_STGY_PROC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char**,int*,scalar_t__) ; 
 scalar_t__ db_maxoff ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ *) ; 

void
FUNC4(db_expr_t off, db_strategy_t strategy)
{
	db_expr_t	d;
	char 		*filename;
	const char	*name;
	int 		linenum;
	c_db_sym_t	cursym;

	if (off < 0 && off >= -db_maxoff) {
		FUNC1("%+#lr", (long)off);
		return;
	}
	cursym = FUNC2(off, strategy, &d);
	FUNC3(cursym, &name, NULL);
	if (name == NULL || d >= (db_addr_t)db_maxoff) {
		FUNC1("%#lr", (unsigned long)off);
		return;
	}
#ifdef DDB_NUMSYM
	db_printf("%#lr = %s", (unsigned long)off, name);
#else
	FUNC1("%s", name);
#endif
	if (d)
		FUNC1("+%+#lr", (long)d);
	if (strategy == DB_STGY_PROC) {
		if (FUNC0(cursym, &filename, &linenum, off))
			FUNC1(" [%s:%d]", filename, linenum);
	}
}