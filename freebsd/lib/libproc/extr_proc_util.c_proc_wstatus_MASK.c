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
struct proc_handle {int status; int wstat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ EINTR ; 
 int PS_STOP ; 
 int PS_UNDEAD ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  WUNTRACED ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (struct proc_handle*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct proc_handle *phdl)
{
	int status;

	if (phdl == NULL)
		return (-1);
	if (FUNC5(FUNC4(phdl), &status, WUNTRACED) < 0) {
		if (errno != EINTR)
			FUNC0("waitpid");
		return (-1);
	}
	if (FUNC3(status))
		phdl->status = PS_STOP;
	if (FUNC1(status) || FUNC2(status))
		phdl->status = PS_UNDEAD;
	phdl->wstat = status;

	return (phdl->status);
}