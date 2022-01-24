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
typedef  int /*<<< orphan*/  rl_vcpfunc_t ;

/* Variables and functions */
 int /*<<< orphan*/  EL_UNBUFFERED ; 
 int /*<<< orphan*/ * e ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * rl_linefunc ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

void
FUNC3(const char *prompt, rl_vcpfunc_t *linefunc)
{
	if (e == NULL) {
		FUNC1();
	}
	(void)FUNC2(prompt);
	rl_linefunc = linefunc;
	FUNC0(e, EL_UNBUFFERED, 1);
}