#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_7__ {int /*<<< orphan*/  ms_lock; } ;
typedef  TYPE_1__ metaslab_t ;
struct TYPE_8__ {int /*<<< orphan*/  mg_lock; } ;
typedef  TYPE_2__ metaslab_group_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ SPA_MINBLOCKSIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(metaslab_group_t *mg, metaslab_t *msp, uint64_t weight)
{
	/*
	 * Although in principle the weight can be any value, in
	 * practice we do not use values in the range [1, 511].
	 */
	FUNC0(weight >= SPA_MINBLOCKSIZE || weight == 0);
	FUNC0(FUNC1(&msp->ms_lock));

	FUNC3(&mg->mg_lock);
	FUNC2(mg, msp, weight);
	FUNC4(&mg->mg_lock);
}