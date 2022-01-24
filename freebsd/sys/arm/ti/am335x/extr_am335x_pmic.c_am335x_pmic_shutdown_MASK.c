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
typedef  int /*<<< orphan*/  uint8_t ;
struct tps65217_status_reg {int off; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int RB_POWEROFF ; 
 int /*<<< orphan*/  TPS65217_STATUS_REG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(void *xdev, int howto)
{
	device_t dev;
	struct tps65217_status_reg reg;

	if (!(howto & RB_POWEROFF))
		return;
	dev = (device_t)xdev;
	FUNC0(dev, TPS65217_STATUS_REG, (uint8_t *)&reg, 1);
	/* Set the OFF bit on status register to start the shutdown sequence. */
	reg.off = 1;
	FUNC1(dev, TPS65217_STATUS_REG, (uint8_t *)&reg, 1);
	/* Toggle pmic_pwr_enable to shutdown the PMIC. */
	FUNC2();
}