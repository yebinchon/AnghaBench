#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned long gen; scalar_t__ num; } ;

/* Variables and functions */
 int ENXIO ; 
 int MAXCPU ; 
 int /*<<< orphan*/  VMCB_CACHE_DEFAULT ; 
 TYPE_1__* asid ; 
 int FUNC0 () ; 
 scalar_t__ nasid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  svm_enable ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  vmcb_clean ; 

__attribute__((used)) static int
FUNC5(int ipinum)
{
	int error, cpu;

	if (!FUNC2())
		return (ENXIO);

	error = FUNC0();
	if (error)
		return (error);

	vmcb_clean &= VMCB_CACHE_DEFAULT;

	for (cpu = 0; cpu < MAXCPU; cpu++) {
		/*
		 * Initialize the host ASIDs to their "highest" valid values.
		 *
		 * The next ASID allocation will rollover both 'gen' and 'num'
		 * and start off the sequence at {1,1}.
		 */
		asid[cpu].gen = ~0UL;
		asid[cpu].num = nasid - 1;
	}

	FUNC3();
	FUNC4(ipinum);

	/* Enable SVM on all CPUs */
	FUNC1(NULL, svm_enable, NULL, NULL);

	return (0);
}