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
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct memac_mii_access_mem_map {int /*<<< orphan*/  mdio_cfg; int /*<<< orphan*/  mdio_data; int /*<<< orphan*/  mdio_ctrl; } ;

/* Variables and functions */
 int MDIO_CFG_BSY ; 
 int MDIO_CFG_CLK_DIV_MASK ; 
 int MDIO_CFG_HOLD_MASK ; 
 int MDIO_CTL_PHY_ADDR_SHIFT ; 
 int MDIO_CTL_READ ; 
 int MDIO_DATA_BSY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static uint32_t FUNC3(struct memac_mii_access_mem_map *mii_regs,
	uint8_t phy_addr, uint8_t reg, uint16_t *data)
{
	uint32_t tmp_reg;

	/* Leave only MDIO_CLK_DIV and MDIO_HOLD bits set on */
	tmp_reg = FUNC0(&mii_regs->mdio_cfg);
	tmp_reg &= (MDIO_CFG_CLK_DIV_MASK | MDIO_CFG_HOLD_MASK);
	FUNC1(tmp_reg, &mii_regs->mdio_cfg);

	/* Wait for command completion */
	while ((FUNC0(&mii_regs->mdio_cfg)) & MDIO_CFG_BSY)
		FUNC2(1);

	/* Read transaction */
	tmp_reg = (phy_addr << MDIO_CTL_PHY_ADDR_SHIFT);
	tmp_reg |= reg;
	tmp_reg |= MDIO_CTL_READ;
	FUNC1(tmp_reg, &mii_regs->mdio_ctrl);

	while ((FUNC0(&mii_regs->mdio_cfg)) & MDIO_CFG_BSY)
		FUNC2(1);

	/* Wait for data to be available */
	while ((FUNC0(&mii_regs->mdio_data)) & MDIO_DATA_BSY)
		FUNC2(1);

	*data =  (uint16_t)FUNC0(&mii_regs->mdio_data);

	/* Check error */
	return FUNC0(&mii_regs->mdio_cfg);
}