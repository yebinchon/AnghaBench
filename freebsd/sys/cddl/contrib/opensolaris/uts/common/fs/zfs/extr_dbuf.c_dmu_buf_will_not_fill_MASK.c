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
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;
struct TYPE_2__ {int /*<<< orphan*/  db_state; } ;
typedef  TYPE_1__ dmu_buf_impl_t ;

/* Variables and functions */
 int /*<<< orphan*/  DB_NOFILL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC1(dmu_buf_t *db_fake, dmu_tx_t *tx)
{
	dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;

	db->db_state = DB_NOFILL;

	FUNC0(db_fake, tx);
}