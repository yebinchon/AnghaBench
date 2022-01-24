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
struct idr_layer {scalar_t__ bitmap; struct idr_layer** ary; } ;
struct idr {int layers; struct idr_layer* top; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOSPC ; 
 int IDR_BITS ; 
 int MAX_LEVEL ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC0 (int) ; 
 void* FUNC1 (struct idr*,int) ; 
 void* FUNC2 (struct idr*) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct idr*,...) ; 

__attribute__((used)) static int
FUNC6(struct idr *idr, void *ptr, int *idp)
{
	struct idr_layer *stack[MAX_LEVEL];
	struct idr_layer *il;
	int error;
	int layer;
	int idx;
	int id;

	FUNC4(&idr->lock, MA_OWNED);

	error = -EAGAIN;
	/*
	 * Expand the tree until there is free space.
	 */
	if (idr->top == NULL || idr->top->bitmap == 0) {
		if (idr->layers == MAX_LEVEL + 1) {
			error = -ENOSPC;
			goto out;
		}
		il = FUNC2(idr);
		if (il == NULL)
			goto out;
		il->ary[0] = idr->top;
		if (idr->top)
			il->bitmap &= ~1;
		idr->top = il;
		idr->layers++;
	}
	il = idr->top;
	id = 0;
	/*
	 * Walk the tree following free bitmaps, record our path.
	 */
	for (layer = idr->layers - 1;; layer--) {
		stack[layer] = il;
		idx = FUNC0(il->bitmap);
		if (idx == 0)
			FUNC5("idr_get_new: Invalid leaf state (%p, %p)\n",
			    idr, il);
		idx--;
		id |= idx << (layer * IDR_BITS);
		if (layer == 0)
			break;
		if (il->ary[idx] == NULL) {
			il->ary[idx] = FUNC2(idr);
			if (il->ary[idx] == NULL)
				goto out;
		}
		il = il->ary[idx];
	}
	/*
	 * Allocate the leaf to the consumer.
	 */
	il->bitmap &= ~(1 << idx);
	il->ary[idx] = ptr;
	*idp = id;
	/*
	 * Clear bitmaps potentially up to the root.
	 */
	while (il->bitmap == 0 && ++layer < idr->layers) {
		il = stack[layer];
		il->bitmap &= ~(1 << FUNC3(id, layer));
	}
	error = 0;
out:
#ifdef INVARIANTS
	if (error == 0 && idr_find_locked(idr, id) != ptr) {
		panic("idr_get_new: Failed for idr %p, id %d, ptr %p\n",
		    idr, id, ptr);
	}
#endif
	return (error);
}