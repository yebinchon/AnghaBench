#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct reg {uintptr_t r_rdi; scalar_t__ r_rsp; } ;
struct TYPE_3__ {int* ftp_argmap; int /*<<< orphan*/  ftp_nargs; } ;
typedef  TYPE_1__ fasttrap_probe_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 uintptr_t FUNC1 (uintptr_t*) ; 

__attribute__((used)) static void
FUNC2(fasttrap_probe_t *probe, struct reg *rp, int argc,
    uintptr_t *argv)
{
	int i, x, cap = FUNC0(argc, probe->ftp_nargs);
	uintptr_t *stack = (uintptr_t *)rp->r_rsp;

	for (i = 0; i < cap; i++) {
		x = probe->ftp_argmap[i];

		if (x < 6)
			argv[i] = (&rp->r_rdi)[x];
		else
			argv[i] = FUNC1(&stack[x]);
	}

	for (; i < argc; i++) {
		argv[i] = 0;
	}
}