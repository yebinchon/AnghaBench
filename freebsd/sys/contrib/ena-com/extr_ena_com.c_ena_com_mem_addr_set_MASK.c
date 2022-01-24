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
typedef  scalar_t__ u16 ;
struct ena_common_mem_addr {scalar_t__ mem_addr_high; int /*<<< orphan*/  mem_addr_low; } ;
struct ena_com_dev {scalar_t__ dma_addr_bits; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int ENA_COM_INVAL ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline int FUNC4(struct ena_com_dev *ena_dev,
				       struct ena_common_mem_addr *ena_addr,
				       dma_addr_t addr)
{
	if ((addr & FUNC0(ena_dev->dma_addr_bits - 1, 0)) != addr) {
		FUNC1("dma address has more bits that the device supports\n");
		return ENA_COM_INVAL;
	}

	ena_addr->mem_addr_low = FUNC2(addr);
	ena_addr->mem_addr_high = (u16)FUNC3(addr);

	return 0;
}