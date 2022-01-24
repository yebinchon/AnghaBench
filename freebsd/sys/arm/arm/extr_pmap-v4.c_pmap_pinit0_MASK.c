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
typedef  int u_int32_t ;
struct pmap {int /*<<< orphan*/  pm_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pmap*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

void
FUNC5(struct pmap *pmap)
{
	FUNC0(1, FUNC4("pmap_pinit0: pmap = %08x\n", (u_int32_t) pmap));

	FUNC2(kernel_pmap, pmap, sizeof(*pmap));
	FUNC3(&pmap->pm_mtx, sizeof(pmap->pm_mtx));
	FUNC1(pmap);
}