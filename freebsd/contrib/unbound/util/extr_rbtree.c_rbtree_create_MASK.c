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
typedef  int /*<<< orphan*/  rbtree_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int (*) (void const*,void const*)) ; 

rbtree_type *
FUNC2 (int (*cmpf)(const void *, const void *))
{
	rbtree_type *rbtree;

	/* Allocate memory for it */
	rbtree = (rbtree_type *) FUNC0(sizeof(rbtree_type));
	if (!rbtree) {
		return NULL;
	}

	/* Initialize it */
	FUNC1(rbtree, cmpf);

	return rbtree;
}