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
struct promotenode {int /*<<< orphan*/  ds; } ;
struct TYPE_6__ {int /*<<< orphan*/  list_head; } ;
typedef  TYPE_1__ list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct promotenode*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct promotenode*) ; 
 struct promotenode* FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(list_t *l, void *tag)
{
	struct promotenode *snap;

	if (l == NULL || !FUNC3(&l->list_head))
		return;

	while ((snap = FUNC5(l)) != NULL) {
		FUNC4(l, snap);
		FUNC0(snap->ds, tag);
		FUNC1(snap, sizeof (*snap));
	}
	FUNC2(l);
}