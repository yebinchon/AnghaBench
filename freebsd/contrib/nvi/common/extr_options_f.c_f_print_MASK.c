#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
struct TYPE_8__ {int /*<<< orphan*/ * opts; } ;
typedef  TYPE_1__ SCR ;
typedef  int /*<<< orphan*/  OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OS_STRDUP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int O_OCTAL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  SC_SCR_REFORMAT ; 
 scalar_t__ FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int
FUNC5(
	SCR *sp,
	OPTION *op,
	char *str,
	u_long *valp)
{
	int offset = op - sp->opts;

	/* Preset the value, needed for reinitialization of lookup table. */
	if (offset == O_OCTAL) {
		if (*valp)
			FUNC2(sp, offset);
		else
			FUNC1(sp, offset);
	} else if (FUNC3(sp, offset, OS_STRDUP, str, 0))
		return(1);

	/* Reinitialize the key fast lookup table. */
	FUNC4(sp);

	/* Reformat the screen. */
	FUNC0(sp, SC_SCR_REFORMAT);
	return (0);
}