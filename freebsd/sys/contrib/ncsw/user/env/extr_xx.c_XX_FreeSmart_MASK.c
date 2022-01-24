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
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  XX_MallocSmartLock ; 
 unsigned int* XX_MallocSmartMap ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 scalar_t__ XX_MallocSmartPool ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(void *p)
{
	unsigned int start, slices;

	/* Calculate first slice of region */
	start = FUNC1((vm_offset_t)(p) -
	    (vm_offset_t)XX_MallocSmartPool);

	/* Lock resources */
	FUNC3(&XX_MallocSmartLock);

	FUNC0(XX_MallocSmartMap[start] > 0,
	    ("XX_FreeSmart: Double or mid-block free!\n"));

	/* Free region */
	slices = XX_MallocSmartMap[start];
	FUNC2(start, slices);

	/* Unlock resources */
	FUNC4(&XX_MallocSmartLock);
}