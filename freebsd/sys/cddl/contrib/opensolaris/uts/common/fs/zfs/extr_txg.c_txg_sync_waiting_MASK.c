#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ tx_syncing_txg; scalar_t__ tx_sync_txg_waiting; scalar_t__ tx_quiesced_txg; } ;
typedef  TYPE_1__ tx_state_t ;
struct TYPE_5__ {TYPE_1__ dp_tx; } ;
typedef  TYPE_2__ dsl_pool_t ;
typedef  int boolean_t ;

/* Variables and functions */

boolean_t
FUNC0(dsl_pool_t *dp)
{
	tx_state_t *tx = &dp->dp_tx;

	return (tx->tx_syncing_txg <= tx->tx_sync_txg_waiting ||
	    tx->tx_quiesced_txg != 0);
}