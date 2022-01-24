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
typedef  size_t uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/ * udma_q; } ;
struct al_hal_eth_adapter {TYPE_1__ rx_udma; } ;
typedef  int /*<<< orphan*/  al_bool ;

/* Variables and functions */
 int /*<<< orphan*/  AL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

int FUNC1(struct al_hal_eth_adapter *adapter,
					al_bool enable,
					uint32_t qid,
					uint32_t header_len)
{
	FUNC0(&(adapter->rx_udma.udma_q[qid]), enable,
					     AL_TRUE, header_len);

	return 0;
}