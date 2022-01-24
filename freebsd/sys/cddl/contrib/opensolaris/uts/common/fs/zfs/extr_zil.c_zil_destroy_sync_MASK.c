#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* zl_header; int /*<<< orphan*/  zl_lwb_list; } ;
typedef  TYPE_2__ zilog_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_5__ {int /*<<< orphan*/  zh_claim_txg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zil_free_log_block ; 
 int /*<<< orphan*/  zil_free_log_record ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(zilog_t *zilog, dmu_tx_t *tx)
{
	FUNC0(FUNC1(&zilog->zl_lwb_list));
	(void) FUNC2(zilog, zil_free_log_block,
	    zil_free_log_record, tx, zilog->zl_header->zh_claim_txg);
}