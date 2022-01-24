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
typedef  int /*<<< orphan*/  socipar ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  gpcipar ;
typedef  int /*<<< orphan*/  gicxref ;
typedef  int /*<<< orphan*/  gicipar ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int FUNC1 (int,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int*,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(void)
{
	phandle_t gicipar, gicnode, gicxref;
	phandle_t gpcipar, gpcnode, gpcxref;
	phandle_t socipar, socnode;
	int result;

	socnode = FUNC0("/soc");
	if (socnode == -1)
	    return;
	result = FUNC1(socnode, "interrupt-parent", &socipar,
	    sizeof(socipar));
	if (result <= 0)
		return;

	/* GIC node may be child of soc node, or appear directly at root. */
	gicnode = FUNC0("/soc/interrupt-controller@00a01000");
	if (gicnode == -1)
		gicnode = FUNC0("/soc/interrupt-controller@a01000");
	if (gicnode == -1) {
		gicnode = FUNC0("/interrupt-controller@00a01000");
		if (gicnode == -1)
			gicnode = FUNC0("/interrupt-controller@a01000");
		if (gicnode == -1)
			return;
	}
	gicxref = FUNC3(gicnode);

	/* If gic node has no parent, pretend it is its own parent. */
	result = FUNC1(gicnode, "interrupt-parent", &gicipar,
	    sizeof(gicipar));
	if (result <= 0)
		gicipar = gicxref;

	gpcnode = FUNC0("/soc/aips-bus@02000000/gpc@020dc000");
	if (gpcnode == -1)
		gpcnode = FUNC0("/soc/aips-bus@2000000/gpc@20dc000");
	if (gpcnode == -1)
		return;
	result = FUNC1(gpcnode, "interrupt-parent", &gpcipar,
	    sizeof(gpcipar));
	if (result <= 0)
		return;
	gpcxref = FUNC3(gpcnode);

	if (socipar != gpcxref || gpcipar != gicxref || gicipar != gicxref)
		return;

	gicxref = FUNC4(gicxref);
	FUNC2(socnode, "interrupt-parent", &gicxref, sizeof(gicxref));
}