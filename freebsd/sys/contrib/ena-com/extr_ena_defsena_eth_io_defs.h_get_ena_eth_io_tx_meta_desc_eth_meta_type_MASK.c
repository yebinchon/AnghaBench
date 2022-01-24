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
typedef  int uint32_t ;
struct ena_eth_io_tx_meta_desc {int len_ctrl; } ;

/* Variables and functions */
 int ENA_ETH_IO_TX_META_DESC_ETH_META_TYPE_MASK ; 
 int ENA_ETH_IO_TX_META_DESC_ETH_META_TYPE_SHIFT ; 

__attribute__((used)) static inline uint32_t FUNC0(const struct ena_eth_io_tx_meta_desc *p)
{
	return (p->len_ctrl & ENA_ETH_IO_TX_META_DESC_ETH_META_TYPE_MASK) >> ENA_ETH_IO_TX_META_DESC_ETH_META_TYPE_SHIFT;
}