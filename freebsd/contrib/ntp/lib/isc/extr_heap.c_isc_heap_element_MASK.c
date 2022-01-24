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
struct TYPE_4__ {unsigned int last; void** array; } ;
typedef  TYPE_1__ isc_heap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 

void *
FUNC2(isc_heap_t *heap, unsigned int index) {
	FUNC0(FUNC1(heap));
	FUNC0(index >= 1);

	if (index <= heap->last)
		return (heap->array[index]);
	return (NULL);
}