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
struct TYPE_3__ {int pd_flags; } ;
typedef  TYPE_1__ prefetch_data_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ DMU_OT_INTENT_LOG ; 
 int TRAVERSE_PREFETCH_DATA ; 

__attribute__((used)) static boolean_t
FUNC4(prefetch_data_t *pfd, const blkptr_t *bp)
{
	FUNC0(pfd->pd_flags & TRAVERSE_PREFETCH_DATA);
	if (FUNC3(bp) || FUNC2(bp) ||
	    FUNC1(bp) == DMU_OT_INTENT_LOG)
		return (B_FALSE);
	return (B_TRUE);
}