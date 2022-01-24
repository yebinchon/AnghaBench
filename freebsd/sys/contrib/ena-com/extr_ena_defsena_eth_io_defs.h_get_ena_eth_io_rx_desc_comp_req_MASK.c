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
typedef  int uint8_t ;
struct ena_eth_io_rx_desc {int ctrl; } ;

/* Variables and functions */
 int ENA_ETH_IO_RX_DESC_COMP_REQ_MASK ; 
 int ENA_ETH_IO_RX_DESC_COMP_REQ_SHIFT ; 

__attribute__((used)) static inline uint8_t FUNC0(const struct ena_eth_io_rx_desc *p)
{
	return (p->ctrl & ENA_ETH_IO_RX_DESC_COMP_REQ_MASK) >> ENA_ETH_IO_RX_DESC_COMP_REQ_SHIFT;
}