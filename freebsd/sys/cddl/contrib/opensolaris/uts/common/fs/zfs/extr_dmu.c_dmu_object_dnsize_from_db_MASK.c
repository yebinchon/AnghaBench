#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int dn_num_slots; } ;
typedef  TYPE_1__ dnode_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;
typedef  int /*<<< orphan*/  dmu_buf_impl_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int DNODE_SHIFT ; 

void
FUNC3(dmu_buf_t *db_fake, int *dnsize)
{
	dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;
	dnode_t *dn;

	FUNC1(db);
	dn = FUNC0(db);
	*dnsize = dn->dn_num_slots << DNODE_SHIFT;
	FUNC2(db);
}