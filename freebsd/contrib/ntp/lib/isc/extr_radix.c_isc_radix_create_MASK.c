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
struct TYPE_4__ {int maxbits; int /*<<< orphan*/  magic; scalar_t__ num_added_node; scalar_t__ num_active_node; int /*<<< orphan*/ * head; int /*<<< orphan*/ * mctx; } ;
typedef  TYPE_1__ isc_radix_tree_t ;
typedef  int /*<<< orphan*/  isc_mem_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_NOMEMORY ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int RADIX_MAXBITS ; 
 int /*<<< orphan*/  RADIX_TREE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 

isc_result_t
FUNC3(isc_mem_t *mctx, isc_radix_tree_t **target, int maxbits) {
	isc_radix_tree_t *radix;

	FUNC0(target != NULL && *target == NULL);

	radix = FUNC2(mctx, sizeof(isc_radix_tree_t));
	if (radix == NULL)
		return (ISC_R_NOMEMORY);

	radix->mctx = mctx;
	radix->maxbits = maxbits;
	radix->head = NULL;
	radix->num_active_node = 0;
	radix->num_added_node = 0;
	FUNC1(maxbits <= RADIX_MAXBITS); /* XXX */
	radix->magic = RADIX_TREE_MAGIC;
	*target = radix;
	return (ISC_R_SUCCESS);
}