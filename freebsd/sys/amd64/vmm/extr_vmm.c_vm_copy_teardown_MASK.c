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
struct vm_copyinfo {int /*<<< orphan*/ * cookie; } ;
struct vm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vm_copyinfo*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct vm *vm, int vcpuid, struct vm_copyinfo *copyinfo,
    int num_copyinfo)
{
	int idx;

	for (idx = 0; idx < num_copyinfo; idx++) {
		if (copyinfo[idx].cookie != NULL)
			FUNC1(copyinfo[idx].cookie);
	}
	FUNC0(copyinfo, num_copyinfo * sizeof(struct vm_copyinfo));
}