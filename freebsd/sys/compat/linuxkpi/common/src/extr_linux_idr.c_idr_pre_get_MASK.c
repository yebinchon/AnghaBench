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
struct idr_layer {struct idr_layer** ary; int /*<<< orphan*/  bitmap; } ;
struct idr {int layers; struct idr_layer* free; int /*<<< orphan*/  lock; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  IDR_SIZE ; 
 int /*<<< orphan*/  M_IDR ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct idr_layer* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct idr *idr, gfp_t gfp_mask)
{
	struct idr_layer *il, *iln;
	struct idr_layer *head;
	int need;

	FUNC2(&idr->lock);
	for (;;) {
		need = idr->layers + 1;
		for (il = idr->free; il != NULL; il = il->ary[0])
			need--;
		FUNC3(&idr->lock);
		if (need <= 0)
			break;
		for (head = NULL; need; need--) {
			iln = FUNC1(sizeof(*il), M_IDR, M_ZERO | gfp_mask);
			if (iln == NULL)
				break;
			FUNC0(&iln->bitmap, IDR_SIZE);
			if (head != NULL) {
				il->ary[0] = iln;
				il = iln;
			} else
				head = il = iln;
		}
		if (head == NULL)
			return (0);
		FUNC2(&idr->lock);
		il->ary[0] = idr->free;
		idr->free = head;
	}
	return (1);
}