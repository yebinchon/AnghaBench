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
typedef  int uint16_t ;
struct memac_mii_access_mem_map {int /*<<< orphan*/  mdio_data; int /*<<< orphan*/  mdio_cfg; int /*<<< orphan*/  mdio_addr; int /*<<< orphan*/  mdio_ctrl; } ;

/* Variables and functions */
 int MDIO_CFG_BSY ; 
 int MDIO_CFG_CLK_DIV_MASK ; 
 int MDIO_CFG_ENC45 ; 
 int MDIO_CFG_HOLD_MASK ; 
 int MDIO_DATA_BSY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct memac_mii_access_mem_map *mii_regs,
	uint8_t phy_addr, uint8_t reg, uint16_t data)
{
	uint32_t                tmp_reg;

	tmp_reg = FUNC0(&mii_regs->mdio_cfg);
	/* Leave only MDIO_CLK_DIV bits set on */
	tmp_reg &= MDIO_CFG_CLK_DIV_MASK;
	/* Set maximum MDIO_HOLD value to allow phy to see
	change of data signal */
	tmp_reg |= MDIO_CFG_HOLD_MASK;
	/* Add 10G interface mode */
	tmp_reg |= MDIO_CFG_ENC45;
	FUNC1(tmp_reg, &mii_regs->mdio_cfg);

	/* Wait for command completion */
	while ((FUNC0(&mii_regs->mdio_cfg)) & MDIO_CFG_BSY)
		FUNC2(1);

	/* Specify phy and register to be accessed */
	FUNC1(phy_addr, &mii_regs->mdio_ctrl);
	FUNC1(reg, &mii_regs->mdio_addr);
	FUNC3();

	while ((FUNC0(&mii_regs->mdio_cfg)) & MDIO_CFG_BSY)
		FUNC2(1);

	/* Write data */
	FUNC1(data, &mii_regs->mdio_data);
	FUNC3();

	/* Wait for write transaction end */
	while ((FUNC0(&mii_regs->mdio_data)) & MDIO_DATA_BSY)
		FUNC2(1);
}