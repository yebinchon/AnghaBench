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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct dbuf_hold_impl_data {int dummy; } ;
typedef  int /*<<< orphan*/  dnode_t ;
typedef  int /*<<< orphan*/  dmu_buf_impl_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int DBUF_HOLD_IMPL_MAX_DEPTH ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC0 (struct dbuf_hold_impl_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct dbuf_hold_impl_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 struct dbuf_hold_impl_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dbuf_hold_impl_data*,int) ; 

int
FUNC4(dnode_t *dn, uint8_t level, uint64_t blkid,
    boolean_t fail_sparse, boolean_t fail_uncached,
    void *tag, dmu_buf_impl_t **dbp)
{
	struct dbuf_hold_impl_data *dh;
	int error;

	dh = FUNC2(sizeof (struct dbuf_hold_impl_data) *
	    DBUF_HOLD_IMPL_MAX_DEPTH, KM_SLEEP);
	FUNC1(dh, dn, level, blkid, fail_sparse,
	    fail_uncached, tag, dbp, 0);

	error = FUNC0(dh);

	FUNC3(dh, sizeof (struct dbuf_hold_impl_data) *
	    DBUF_HOLD_IMPL_MAX_DEPTH);

	return (error);
}