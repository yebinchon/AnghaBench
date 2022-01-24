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
struct pmap {int /*<<< orphan*/  pm_port; int /*<<< orphan*/  pm_prot; int /*<<< orphan*/  pm_vers; int /*<<< orphan*/  pm_prog; } ;
typedef  scalar_t__ bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool_t
FUNC2(XDR *xdrs, struct pmap *regs)
{

	FUNC0(xdrs != NULL);
	FUNC0(regs != NULL);

	if (FUNC1(xdrs, &regs->pm_prog) &&
		FUNC1(xdrs, &regs->pm_vers) &&
		FUNC1(xdrs, &regs->pm_prot))
		return (FUNC1(xdrs, &regs->pm_port));
	return (FALSE);
}