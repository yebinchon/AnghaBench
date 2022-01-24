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

/* Variables and functions */
 int VM_MAXCPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  vpid_unr ; 

__attribute__((used)) static void
FUNC2(int vpid)
{
	if (vpid < 0 || vpid > 0xffff)
		FUNC1("vpid_free: invalid vpid %d", vpid);

	/*
	 * VPIDs [0,VM_MAXCPU] are special and are not allocated from
	 * the unit number allocator.
	 */

	if (vpid > VM_MAXCPU)
		FUNC0(vpid_unr, vpid);
}