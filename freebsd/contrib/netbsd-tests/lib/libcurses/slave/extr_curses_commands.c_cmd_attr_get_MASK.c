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
typedef  short attr_t ;

/* Variables and functions */
 int FUNC0 (short*,short*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (short) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5(int nargs, char **args)
{
	attr_t attrs;
	short colours;
	int retval;

	if (FUNC1(nargs, 0) == 1)
		return;

	retval = FUNC0(&attrs, &colours, NULL);

	/* XXXX - call3 */
	FUNC2(3);
	FUNC4(retval);
	FUNC3(attrs);
	FUNC3(colours);
}