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
typedef  int /*<<< orphan*/  u32 ;
struct ena_com_mmio_read {int /*<<< orphan*/  read_resp_dma_addr; } ;
struct ena_com_dev {scalar_t__ reg_bar; int /*<<< orphan*/  bus; struct ena_com_mmio_read mmio_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ENA_REGS_MMIO_RESP_HI_OFF ; 
 scalar_t__ ENA_REGS_MMIO_RESP_LO_OFF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC3(struct ena_com_dev *ena_dev)
{
	struct ena_com_mmio_read *mmio_read = &ena_dev->mmio_read;
	u32 addr_low, addr_high;

	addr_low = FUNC1(mmio_read->read_resp_dma_addr);
	addr_high = FUNC0(mmio_read->read_resp_dma_addr);

	FUNC2(ena_dev->bus, addr_low, ena_dev->reg_bar + ENA_REGS_MMIO_RESP_LO_OFF);
	FUNC2(ena_dev->bus, addr_high, ena_dev->reg_bar + ENA_REGS_MMIO_RESP_HI_OFF);
}