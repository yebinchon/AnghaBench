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
typedef  void* device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AXP_IRQSTAT1 ; 
 int AXP_IRQSTAT1_ACIN_HI ; 
 int AXP_IRQSTAT1_ACIN_LO ; 
 int AXP_IRQSTAT1_VBUS_HI ; 
 int AXP_IRQSTAT1_VBUS_LO ; 
 int /*<<< orphan*/  AXP_IRQSTAT2 ; 
 int AXP_IRQSTAT2_BATCHGC ; 
 int AXP_IRQSTAT2_BATCHGD ; 
 int AXP_IRQSTAT2_BAT_IN ; 
 int AXP_IRQSTAT2_BAT_NO ; 
 int /*<<< orphan*/  AXP_IRQSTAT3 ; 
 int /*<<< orphan*/  AXP_IRQSTAT4 ; 
 int AXP_IRQSTAT4_BATLVL_LO0 ; 
 int AXP_IRQSTAT4_BATLVL_LO1 ; 
 int /*<<< orphan*/  AXP_IRQSTAT5 ; 
 int AXP_IRQSTAT5_POKSIRQ ; 
 int /*<<< orphan*/  AXP_IRQSTAT6 ; 
 int /*<<< orphan*/  RB_POWEROFF ; 
 int FUNC0 (void*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	device_t dev;
	uint8_t val;
	int error;

	dev = arg;

	error = FUNC0(dev, AXP_IRQSTAT1, &val, 1);
	if (error != 0)
		return;

	if (val) {
		if (bootverbose)
			FUNC3(dev, "AXP_IRQSTAT1 val: %x\n", val);
		if (val & AXP_IRQSTAT1_ACIN_HI)
			FUNC2("PMU", "AC", "plugged", NULL);
		if (val & AXP_IRQSTAT1_ACIN_LO)
			FUNC2("PMU", "AC", "unplugged", NULL);
		if (val & AXP_IRQSTAT1_VBUS_HI)
			FUNC2("PMU", "USB", "plugged", NULL);
		if (val & AXP_IRQSTAT1_VBUS_LO)
			FUNC2("PMU", "USB", "unplugged", NULL);
		/* Acknowledge */
		FUNC1(dev, AXP_IRQSTAT1, val);
	}

	error = FUNC0(dev, AXP_IRQSTAT2, &val, 1);
	if (error != 0)
		return;

	if (val) {
		if (bootverbose)
			FUNC3(dev, "AXP_IRQSTAT2 val: %x\n", val);
		if (val & AXP_IRQSTAT2_BATCHGD)
			FUNC2("PMU", "Battery", "charged", NULL);
		if (val & AXP_IRQSTAT2_BATCHGC)
			FUNC2("PMU", "Battery", "charging", NULL);
		if (val & AXP_IRQSTAT2_BAT_NO)
			FUNC2("PMU", "Battery", "absent", NULL);
		if (val & AXP_IRQSTAT2_BAT_IN)
			FUNC2("PMU", "Battery", "plugged", NULL);
		/* Acknowledge */
		FUNC1(dev, AXP_IRQSTAT2, val);
	}

	error = FUNC0(dev, AXP_IRQSTAT3, &val, 1);
	if (error != 0)
		return;

	if (val) {
		/* Acknowledge */
		FUNC1(dev, AXP_IRQSTAT3, val);
	}

	error = FUNC0(dev, AXP_IRQSTAT4, &val, 1);
	if (error != 0)
		return;

	if (val) {
		if (bootverbose)
			FUNC3(dev, "AXP_IRQSTAT4 val: %x\n", val);
		if (val & AXP_IRQSTAT4_BATLVL_LO0)
			FUNC2("PMU", "Battery", "shutdown threshold", NULL);
		if (val & AXP_IRQSTAT4_BATLVL_LO1)
			FUNC2("PMU", "Battery", "warning threshold", NULL);
		/* Acknowledge */
		FUNC1(dev, AXP_IRQSTAT4, val);
	}

	error = FUNC0(dev, AXP_IRQSTAT5, &val, 1);
	if (error != 0)
		return;

	if (val != 0) {
		if ((val & AXP_IRQSTAT5_POKSIRQ) != 0) {
			if (bootverbose)
				FUNC3(dev, "Power button pressed\n");
			FUNC4(RB_POWEROFF);
		}
		/* Acknowledge */
		FUNC1(dev, AXP_IRQSTAT5, val);
	}

	error = FUNC0(dev, AXP_IRQSTAT6, &val, 1);
	if (error != 0)
		return;

	if (val) {
		/* Acknowledge */
		FUNC1(dev, AXP_IRQSTAT6, val);
	}
}