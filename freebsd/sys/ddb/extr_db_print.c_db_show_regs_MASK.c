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
struct db_variable {int /*<<< orphan*/  name; } ;
typedef  unsigned long db_expr_t ;
typedef  int /*<<< orphan*/  db_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct db_variable* db_eregs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const**,unsigned long*) ; 
 scalar_t__ db_maxoff ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct db_variable*,unsigned long*) ; 
 struct db_variable* db_regs ; 

void
FUNC5(db_expr_t _1, bool _2, db_expr_t _3, char *_4)
{
	struct db_variable *regp;
	db_expr_t value, offset;
	const char *name;

	for (regp = db_regs; regp < db_eregs; regp++) {
		if (!FUNC4(regp, &value))
			continue;
		FUNC3("%-12s%#*lr", regp->name,
		    (int)(sizeof(unsigned long) * 2 + 2), (unsigned long)value);
		FUNC1((db_addr_t)value, &name, &offset);
		if (name != NULL && offset <= (unsigned long)db_maxoff &&
		    offset != value) {
			FUNC3("\t%s", name);
			if (offset != 0)
				FUNC3("+%+#lr", (long)offset);
		}
		FUNC3("\n");
	}
	FUNC2(FUNC0());
}