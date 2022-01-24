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
struct idr_layer {struct idr_layer** ary; } ;
struct idr {int /*<<< orphan*/  lock; struct idr_layer* free; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_IDR ; 
 int /*<<< orphan*/  FUNC0 (struct idr_layer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct idr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct idr *idr)
{
	struct idr_layer *il, *iln;

	FUNC1(idr);
	FUNC3(&idr->lock);
	for (il = idr->free; il != NULL; il = iln) {
		iln = il->ary[0];
		FUNC0(il, M_IDR);
	}
	FUNC4(&idr->lock);
	FUNC2(&idr->lock);
}