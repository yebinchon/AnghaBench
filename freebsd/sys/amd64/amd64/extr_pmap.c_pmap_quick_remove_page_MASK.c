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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ qframe ; 
 int /*<<< orphan*/  qframe_mtx ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void
FUNC4(vm_offset_t addr)
{

	if (addr != qframe)
		return;
	FUNC2(FUNC3(qframe), 0);
	FUNC0(qframe);
	FUNC1(&qframe_mtx);
}