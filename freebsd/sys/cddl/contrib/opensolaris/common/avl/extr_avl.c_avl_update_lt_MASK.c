#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_6__ {scalar_t__ (* avl_compar ) (void*,void*) ;} ;
typedef  TYPE_1__ avl_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (TYPE_1__*,void*) ; 
 void* FUNC2 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ FUNC4 (void*,void*) ; 
 scalar_t__ FUNC5 (void*,void*) ; 

boolean_t
FUNC6(avl_tree_t *t, void *obj)
{
	void *neighbor;

	FUNC0(((neighbor = FUNC1(t, obj)) == NULL) ||
	    (t->avl_compar(obj, neighbor) <= 0));

	neighbor = FUNC2(t, obj);
	if ((neighbor != NULL) && (t->avl_compar(obj, neighbor) < 0)) {
		FUNC3(t, obj);
		return (B_TRUE);
	}

	return (B_FALSE);
}