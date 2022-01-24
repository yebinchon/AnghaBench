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
typedef  int /*<<< orphan*/  vertex_t ;
struct TYPE_5__ {int size; int /*<<< orphan*/ ** nodes; } ;
typedef  TYPE_1__ binary_heap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static vertex_t *FUNC2(binary_heap_t * heap)
{
	vertex_t *min = NULL;

	if (heap->size > 0)
		min = heap->nodes[0];

	if (min == NULL)
		return min;

	if (heap->size > 0) {
		if (heap->size > 1) {
			FUNC1(heap, 0, heap->size - 1);
			heap->size--;
			FUNC0(heap, 0);
		} else {
			heap->size--;
		}
	}

	return min;
}