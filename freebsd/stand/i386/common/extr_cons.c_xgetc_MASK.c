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

/* Variables and functions */
 int IO_KEYBOARD ; 
 int IO_SERIAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBX_NOINTR ; 
 int FUNC1 (int) ; 
 int ioctrl ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 () ; 

int
FUNC4(int fn)
{

	if (FUNC0(RBX_NOINTR))
		return (0);
	for (;;) {
		if (ioctrl & IO_KEYBOARD && FUNC1(1))
			return (fn ? 1 : FUNC1(0));
		if (ioctrl & IO_SERIAL && FUNC3())
			return (fn ? 1 : FUNC2());
		if (fn)
			return (0);
	}
	/* NOTREACHED */
}