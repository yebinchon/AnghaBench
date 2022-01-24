#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ sm_object; int /*<<< orphan*/ * sm_os; int /*<<< orphan*/  sm_shift; scalar_t__ sm_size; scalar_t__ sm_start; } ;
typedef  TYPE_1__ space_map_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 

int
FUNC4(space_map_t **smp, objset_t *os, uint64_t object,
    uint64_t start, uint64_t size, uint8_t shift)
{
	space_map_t *sm;
	int error;

	FUNC0(*smp == NULL);
	FUNC0(os != NULL);
	FUNC0(object != 0);

	sm = FUNC1(sizeof (space_map_t), KM_SLEEP);

	sm->sm_start = start;
	sm->sm_size = size;
	sm->sm_shift = shift;
	sm->sm_os = os;
	sm->sm_object = object;

	error = FUNC3(sm);
	if (error != 0) {
		FUNC2(sm);
		return (error);
	}
	*smp = sm;

	return (0);
}