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
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_6__ {int last; unsigned int size; } ;
typedef  TYPE_1__ isc_heap_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_NOMEMORY ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

isc_result_t
FUNC5(isc_heap_t *heap, void *elt) {
	unsigned int new_last;

	FUNC0(FUNC2(heap));

	new_last = heap->last + 1;
	FUNC1(new_last > 0); /* overflow check */
	if (new_last >= heap->size && !FUNC4(heap))
		return (ISC_R_NOMEMORY);
	heap->last = new_last;

	FUNC3(heap, new_last, elt);

	return (ISC_R_SUCCESS);
}