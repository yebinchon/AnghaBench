#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cg {int dummy; } ;
struct TYPE_4__ {struct cg* b_cg; } ;
struct bufarea {TYPE_1__ b_un; } ;
struct TYPE_5__ {scalar_t__ fs_cgsize; int /*<<< orphan*/  fs_ncg; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CYLGRP ; 
 int /*<<< orphan*/  EEXIT ; 
 struct bufarea* FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct bufarea cgblk ; 
 struct bufarea* cgbufs ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ flushtries ; 
 int /*<<< orphan*/  FUNC3 (struct bufarea*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct bufarea*,int /*<<< orphan*/ ) ; 
 struct cg* FUNC5 (unsigned int) ; 
 TYPE_2__ sblock ; 

struct bufarea *
FUNC6(int cg)
{
	struct bufarea *cgbp;
	struct cg *cgp;

	if (cgbufs == NULL) {
		cgbufs = FUNC0(sblock.fs_ncg, sizeof(struct bufarea));
		if (cgbufs == NULL)
			FUNC2(EEXIT, "cannot allocate cylinder group buffers");
	}
	cgbp = &cgbufs[cg];
	if (cgbp->b_un.b_cg != NULL)
		return (cgbp);
	cgp = NULL;
	if (flushtries == 0)
		cgp = FUNC5((unsigned int)sblock.fs_cgsize);
	if (cgp == NULL) {
		FUNC3(&cgblk, FUNC1(&sblock, cg), sblock.fs_cgsize);
		return (&cgblk);
	}
	cgbp->b_un.b_cg = cgp;
	FUNC4(cgbp, BT_CYLGRP);
	FUNC3(cgbp, FUNC1(&sblock, cg), sblock.fs_cgsize);
	return (cgbp);
}