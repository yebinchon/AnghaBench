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
typedef  int /*<<< orphan*/  isc_result_t ;
typedef  int /*<<< orphan*/  isc_mem_t ;
typedef  int /*<<< orphan*/  isc_heapindex_t ;
typedef  int /*<<< orphan*/ * isc_heapcompare_t ;
struct TYPE_4__ {unsigned int size_increment; int /*<<< orphan*/  index; int /*<<< orphan*/ * compare; int /*<<< orphan*/ * array; scalar_t__ last; int /*<<< orphan*/ * mctx; scalar_t__ size; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__ isc_heap_t ;

/* Variables and functions */
 int /*<<< orphan*/  HEAP_MAGIC ; 
 int /*<<< orphan*/  ISC_R_NOMEMORY ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int SIZE_INCREMENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 

isc_result_t
FUNC3(isc_mem_t *mctx, isc_heapcompare_t compare,
		isc_heapindex_t index, unsigned int size_increment,
		isc_heap_t **heapp)
{
	isc_heap_t *heap;

	FUNC0(heapp != NULL && *heapp == NULL);
	FUNC0(compare != NULL);

	heap = FUNC2(mctx, sizeof(*heap));
	if (heap == NULL)
		return (ISC_R_NOMEMORY);
	heap->magic = HEAP_MAGIC;
	heap->size = 0;
	heap->mctx = NULL;
	FUNC1(mctx, &heap->mctx);
	if (size_increment == 0)
		heap->size_increment = SIZE_INCREMENT;
	else
		heap->size_increment = size_increment;
	heap->last = 0;
	heap->array = NULL;
	heap->compare = compare;
	heap->index = index;

	*heapp = heap;

	return (ISC_R_SUCCESS);
}