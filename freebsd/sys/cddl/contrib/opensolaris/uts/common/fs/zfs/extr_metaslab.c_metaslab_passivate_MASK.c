#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ ms_weight; int /*<<< orphan*/  ms_group; scalar_t__ ms_activation_weight; int /*<<< orphan*/  ms_allocatable; } ;
typedef  TYPE_1__ metaslab_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ METASLAB_ACTIVE_MASK ; 
 scalar_t__ METASLAB_WEIGHT_TYPE ; 
 scalar_t__ SPA_MINBLOCKSIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(metaslab_t *msp, uint64_t weight)
{
	uint64_t size = weight & ~METASLAB_WEIGHT_TYPE;

	/*
	 * If size < SPA_MINBLOCKSIZE, then we will not allocate from
	 * this metaslab again.  In that case, it had better be empty,
	 * or we would be leaving space on the table.
	 */
	FUNC0(size >= SPA_MINBLOCKSIZE ||
	    FUNC3(msp->ms_allocatable));
	FUNC1(weight & METASLAB_ACTIVE_MASK);

	msp->ms_activation_weight = 0;
	FUNC2(msp->ms_group, msp, weight);
	FUNC0((msp->ms_weight & METASLAB_ACTIVE_MASK) == 0);
}