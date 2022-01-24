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
typedef  scalar_t__ uint64_t ;
struct promotenode {TYPE_1__* ds; } ;
typedef  int /*<<< orphan*/  list_t ;
struct TYPE_2__ {int /*<<< orphan*/  ds_deadlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 struct promotenode* FUNC1 (int /*<<< orphan*/ *) ; 
 struct promotenode* FUNC2 (int /*<<< orphan*/ *,struct promotenode*) ; 

__attribute__((used)) static int
FUNC3(list_t *l, uint64_t mintxg, uint64_t *spacep)
{
	struct promotenode *snap;

	*spacep = 0;
	for (snap = FUNC1(l); snap; snap = FUNC2(l, snap)) {
		uint64_t used, comp, uncomp;
		FUNC0(&snap->ds->ds_deadlist,
		    mintxg, UINT64_MAX, &used, &comp, &uncomp);
		*spacep += used;
	}
	return (0);
}