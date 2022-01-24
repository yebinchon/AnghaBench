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
struct dbreg {int /*<<< orphan*/ * dr; } ;
typedef  int /*<<< orphan*/  db_addr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int DBREG_DR7_LEN_8 ; 
 scalar_t__ FUNC3 (struct dbreg*,int) ; 
 int /*<<< orphan*/  DB_STGY_ANY ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct dbreg*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void
FUNC8(void)
{
	struct dbreg d;
	int i, len, type;

	FUNC6(NULL, &d);

	FUNC4("\nhardware watchpoints:\n");
	FUNC4("  watch    status        type  len             address\n");
	FUNC4("  -----  --------  ----------  ---  ------------------\n");
	for (i = 0; i < 4; i++) {
		if (FUNC1(d.dr[7], i)) {
			type = FUNC0(d.dr[7], i);
			len = FUNC2(d.dr[7], i);
			if (len == DBREG_DR7_LEN_8)
				len = 8;
			else
				len++;
			FUNC4("  %-5d  %-8s  %10s  %3d  ",
			    i, "enabled", FUNC7(type), len);
			FUNC5((db_addr_t)FUNC3(&d, i), DB_STGY_ANY);
			FUNC4("\n");
		} else {
			FUNC4("  %-5d  disabled\n", i);
		}
	}

	FUNC4("\ndebug register values:\n");
	for (i = 0; i < 8; i++)
		if (i != 4 && i != 5)
			FUNC4("  dr%d 0x%016lx\n", i, FUNC3(&d, i));
	FUNC4("\n");
}