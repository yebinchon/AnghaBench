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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int SIGRTMAX ; 
 int FUNC3 (int) ; 

void
FUNC4(sigset_t *bss, l_sigset_t *lss)
{
	int b, l;

	FUNC1(*lss);
	for (b = 1; b <= SIGRTMAX; b++) {
		if (FUNC2(*bss, b)) {
			l = FUNC3(b);
			if (l)
				FUNC0(*lss, l);
		}
	}
}