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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dnode_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;
typedef  int /*<<< orphan*/  dmu_buf_impl_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DMU_READ_PREFETCH ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int*,int /*<<< orphan*/ ***,int /*<<< orphan*/ ) ; 

int
FUNC4(dmu_buf_t *db_fake, uint64_t offset,
    uint64_t length, boolean_t read, void *tag, int *numbufsp,
    dmu_buf_t ***dbpp)
{
	dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;
	dnode_t *dn;
	int err;

	FUNC1(db);
	dn = FUNC0(db);
	err = FUNC3(dn, offset, length, read, tag,
	    numbufsp, dbpp, DMU_READ_PREFETCH);
	FUNC2(db);

	return (err);
}