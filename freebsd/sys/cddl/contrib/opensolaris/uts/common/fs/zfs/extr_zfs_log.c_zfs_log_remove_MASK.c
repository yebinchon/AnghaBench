#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  z_id; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  zilog_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/  lr_doid; } ;
typedef  TYPE_2__ lr_remove_t ;
struct TYPE_9__ {int /*<<< orphan*/  itx_oid; int /*<<< orphan*/  itx_lr; } ;
typedef  TYPE_3__ itx_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC5(zilog_t *zilog, dmu_tx_t *tx, uint64_t txtype,
    znode_t *dzp, char *name, uint64_t foid)
{
	itx_t *itx;
	lr_remove_t *lr;
	size_t namesize = FUNC1(name) + 1;

	if (FUNC4(zilog, tx))
		return;

	itx = FUNC3(txtype, sizeof (*lr) + namesize);
	lr = (lr_remove_t *)&itx->itx_lr;
	lr->lr_doid = dzp->z_id;
	FUNC0(name, (char *)(lr + 1), namesize);

	itx->itx_oid = foid;

	FUNC2(zilog, itx, tx);
}