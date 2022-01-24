#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int size; int /*<<< orphan*/  mctx; scalar_t__ magic; int /*<<< orphan*/ * array; } ;
typedef  TYPE_1__ isc_heap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

void
FUNC4(isc_heap_t **heapp) {
	isc_heap_t *heap;

	FUNC0(heapp != NULL);
	heap = *heapp;
	FUNC0(FUNC1(heap));

	if (heap->array != NULL)
		FUNC2(heap->mctx, heap->array,
			    heap->size * sizeof(void *));
	heap->magic = 0;
	FUNC3(&heap->mctx, heap, sizeof(*heap));

	*heapp = NULL;
}