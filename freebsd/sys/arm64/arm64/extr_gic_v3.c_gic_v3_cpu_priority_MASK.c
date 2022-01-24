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
typedef  int uint64_t ;

/* Variables and functions */
 int ICC_PMR_EL1_PRIO_MASK ; 
 int /*<<< orphan*/  PMR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __inline void
FUNC1(uint64_t mask)
{

	/* Set prority mask */
	FUNC0(PMR, mask & ICC_PMR_EL1_PRIO_MASK);
}