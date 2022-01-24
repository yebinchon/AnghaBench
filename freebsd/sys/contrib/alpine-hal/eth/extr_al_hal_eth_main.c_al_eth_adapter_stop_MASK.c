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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct al_hal_eth_adapter {int /*<<< orphan*/  name; TYPE_1__ rx_udma; TYPE_1__ tx_udma; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDMA_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct al_hal_eth_adapter *adapter)
{
	int rc;

	FUNC0("eth [%s]: stop controller's UDMA\n", adapter->name);

	/* disable Tx dma*/
	rc = FUNC1(&adapter->tx_udma, UDMA_DISABLE);
	if (rc != 0) {
		FUNC2("[%s] warn: failed to change state, error %d\n",
			 adapter->tx_udma.name, rc);
		return rc;
	}

	FUNC0("eth [%s]: controller's TX UDMA stopped\n",
		 adapter->name);
	/* disable Rx dma*/
	rc = FUNC1(&adapter->rx_udma, UDMA_DISABLE);
	if (rc != 0) {
		FUNC2("[%s] warn: failed to change state, error %d\n",
			 adapter->rx_udma.name, rc);
		return rc;
	}

	FUNC0("eth [%s]: controller's RX UDMA stopped\n",
		 adapter->name);
	return 0;
}