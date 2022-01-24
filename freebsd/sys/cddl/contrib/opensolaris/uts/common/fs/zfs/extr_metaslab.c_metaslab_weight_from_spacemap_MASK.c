#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_7__ {TYPE_2__* ms_sm; } ;
typedef  TYPE_3__ metaslab_t ;
struct TYPE_6__ {scalar_t__ sm_shift; TYPE_1__* sm_phys; } ;
struct TYPE_5__ {scalar_t__* smp_histogram; } ;

/* Variables and functions */
 int SPACE_MAP_HISTOGRAM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static uint64_t
FUNC3(metaslab_t *msp)
{
	uint64_t weight = 0;

	for (int i = SPACE_MAP_HISTOGRAM_SIZE - 1; i >= 0; i--) {
		if (msp->ms_sm->sm_phys->smp_histogram[i] != 0) {
			FUNC1(weight,
			    msp->ms_sm->sm_phys->smp_histogram[i]);
			FUNC2(weight, i +
			    msp->ms_sm->sm_shift);
			FUNC0(weight, 0);
			break;
		}
	}
	return (weight);
}