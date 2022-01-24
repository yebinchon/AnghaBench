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
struct local_zones {int /*<<< orphan*/  ztree; } ;
struct local_zone {int /*<<< orphan*/  lock; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct local_zone*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct local_zone*) ; 
 int /*<<< orphan*/  FUNC4 (struct local_zone*,struct local_zone*,int /*<<< orphan*/ ) ; 

void FUNC5(struct local_zones* zones, struct local_zone* z)
{
	/* fix up parents in tree */
	FUNC2(&z->lock);
	FUNC4(z, z, z->parent);

	/* remove from tree */
	(void)FUNC3(&zones->ztree, z);

	/* delete the zone */
	FUNC1(&z->lock);
	FUNC0(z);
}