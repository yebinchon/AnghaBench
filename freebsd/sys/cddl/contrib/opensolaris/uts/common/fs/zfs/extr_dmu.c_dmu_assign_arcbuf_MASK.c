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
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;
typedef  int /*<<< orphan*/  dmu_buf_impl_t ;
typedef  int /*<<< orphan*/  arc_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4(dmu_buf_t *handle, uint64_t offset, arc_buf_t *buf,
    dmu_tx_t *tx)
{
	dmu_buf_impl_t *dbuf = (dmu_buf_impl_t *)handle;

	FUNC1(dbuf);
	FUNC3(FUNC0(dbuf), offset, buf, tx);
	FUNC2(dbuf);
}