#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  m; } ;
struct linux_idr_cache {int /*<<< orphan*/  count; struct idr_layer* head; TYPE_1__ lock; } ;
struct idr_layer {struct idr_layer** ary; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct idr_layer *
FUNC2(struct linux_idr_cache *lic)
{
	struct idr_layer *retval;

	/* check if wrong thread is trying to dequeue */
	if (FUNC1(&lic->lock.m) == 0)
		return (NULL);

	retval = lic->head;
	if (FUNC0(retval != NULL)) {
		lic->head = retval->ary[0];
		lic->count--;
		retval->ary[0] = NULL;
	}
	return (retval);
}