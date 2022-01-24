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
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  l_sigset_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int LINUX_SIGRTMAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 

void
FUNC4(l_sigset_t *lss, sigset_t *bss)
{
	int b, l;

	FUNC2(*bss);
	for (l = 1; l <= LINUX_SIGRTMAX; l++) {
		if (FUNC0(*lss, l)) {
			b = FUNC3(l);
			if (b)
				FUNC1(*bss, b);
		}
	}
}