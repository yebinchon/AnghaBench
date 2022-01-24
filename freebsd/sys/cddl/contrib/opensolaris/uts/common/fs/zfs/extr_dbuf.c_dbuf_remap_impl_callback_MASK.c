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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_2__ {int /*<<< orphan*/  drica_blk_birth; int /*<<< orphan*/ * drica_tx; int /*<<< orphan*/ * drica_os; } ;
typedef  TYPE_1__ dbuf_remap_impl_callback_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(uint64_t vdev, uint64_t offset, uint64_t size,
    void *arg)
{
	dbuf_remap_impl_callback_arg_t *drica = arg;
	objset_t *os = drica->drica_os;
	spa_t *spa = FUNC2(os);
	dmu_tx_t *tx = drica->drica_tx;

	FUNC0(FUNC4(FUNC5(spa)));

	if (os == FUNC6(spa)) {
		FUNC7(spa, vdev, offset, size, tx);
	} else {
		FUNC3(FUNC1(os), vdev, offset,
		    size, drica->drica_blk_birth, tx);
	}
}