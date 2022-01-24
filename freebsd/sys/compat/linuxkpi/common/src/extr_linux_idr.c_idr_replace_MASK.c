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
struct idr_layer {int bitmap; void** ary; } ;
struct idr {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int IDR_MASK ; 
 struct idr_layer* FUNC1 (struct idr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void *
FUNC4(struct idr *idr, void *ptr, int id)
{
	struct idr_layer *il;
	void *res;
	int idx;

	FUNC2(&idr->lock);
	il = FUNC1(idr, id);
	idx = id & IDR_MASK;

	/* Replace still returns an error if the item was not allocated. */
	if (il == NULL || (il->bitmap & (1 << idx))) {
		res = FUNC0(-ENOENT);
	} else {
		res = il->ary[idx];
		il->ary[idx] = ptr;
	}
	FUNC3(&idr->lock);
	return (res);
}