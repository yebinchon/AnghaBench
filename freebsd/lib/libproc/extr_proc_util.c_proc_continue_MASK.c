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
struct proc_handle {scalar_t__ status; int /*<<< orphan*/  wstat; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ PS_RUN ; 
 scalar_t__ PS_STOP ; 
 int /*<<< orphan*/  PT_CONTINUE ; 
 int SIGTRAP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc_handle*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC3(struct proc_handle *phdl)
{
	int pending;

	if (phdl == NULL)
		return (-1);

	if (phdl->status == PS_STOP && FUNC0(phdl->wstat) != SIGTRAP)
		pending = FUNC0(phdl->wstat);
	else
		pending = 0;
	if (FUNC2(PT_CONTINUE, FUNC1(phdl), (caddr_t)(uintptr_t)1,
	    pending) != 0)
		return (-1);

	phdl->status = PS_RUN;

	return (0);
}