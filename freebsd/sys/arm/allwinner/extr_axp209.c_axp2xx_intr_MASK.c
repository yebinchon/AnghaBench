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
struct axp2xx_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AXP2XX_IRQ1_AC_CONN ; 
 int AXP2XX_IRQ1_AC_DISCONN ; 
 int AXP2XX_IRQ1_AC_OVERVOLT ; 
 int /*<<< orphan*/  AXP2XX_IRQ1_STATUS ; 
 int AXP2XX_IRQ1_VBUS_CONN ; 
 int AXP2XX_IRQ1_VBUS_DISCONN ; 
 int AXP2XX_IRQ1_VBUS_LOW ; 
 int AXP2XX_IRQ1_VBUS_OVERVOLT ; 
 int AXP2XX_IRQ2_BATT_CHARGED ; 
 int AXP2XX_IRQ2_BATT_CHARGING ; 
 int AXP2XX_IRQ2_BATT_CONN ; 
 int AXP2XX_IRQ2_BATT_DISCONN ; 
 int AXP2XX_IRQ2_BATT_TEMP_LOW ; 
 int AXP2XX_IRQ2_BATT_TEMP_OVER ; 
 int /*<<< orphan*/  AXP2XX_IRQ2_STATUS ; 
 int AXP2XX_IRQ3_PEK_SHORT ; 
 int /*<<< orphan*/  AXP2XX_IRQ3_STATUS ; 
 int /*<<< orphan*/  AXP2XX_IRQ4_STATUS ; 
 int /*<<< orphan*/  AXP2XX_IRQ5_STATUS ; 
 int /*<<< orphan*/  AXP2XX_IRQ_ACK ; 
 int /*<<< orphan*/  RB_POWEROFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct axp2xx_softc *sc;
	uint8_t reg;

	sc = arg;

	FUNC0(sc->dev, AXP2XX_IRQ1_STATUS, &reg, 1);
	if (reg) {
		if (reg & AXP2XX_IRQ1_AC_OVERVOLT)
			FUNC2("PMU", "AC", "overvoltage", NULL);
		if (reg & AXP2XX_IRQ1_VBUS_OVERVOLT)
			FUNC2("PMU", "USB", "overvoltage", NULL);
		if (reg & AXP2XX_IRQ1_VBUS_LOW)
			FUNC2("PMU", "USB", "undervoltage", NULL);
		if (reg & AXP2XX_IRQ1_AC_CONN)
			FUNC2("PMU", "AC", "plugged", NULL);
		if (reg & AXP2XX_IRQ1_AC_DISCONN)
			FUNC2("PMU", "AC", "unplugged", NULL);
		if (reg & AXP2XX_IRQ1_VBUS_CONN)
			FUNC2("PMU", "USB", "plugged", NULL);
		if (reg & AXP2XX_IRQ1_VBUS_DISCONN)
			FUNC2("PMU", "USB", "unplugged", NULL);
		FUNC1(sc->dev, AXP2XX_IRQ1_STATUS, AXP2XX_IRQ_ACK);
	}

	FUNC0(sc->dev, AXP2XX_IRQ2_STATUS, &reg, 1);
	if (reg) {
		if (reg & AXP2XX_IRQ2_BATT_CHARGED)
			FUNC2("PMU", "Battery", "charged", NULL);
		if (reg & AXP2XX_IRQ2_BATT_CHARGING)
			FUNC2("PMU", "Battery", "charging", NULL);
		if (reg & AXP2XX_IRQ2_BATT_CONN)
			FUNC2("PMU", "Battery", "connected", NULL);
		if (reg & AXP2XX_IRQ2_BATT_DISCONN)
			FUNC2("PMU", "Battery", "disconnected", NULL);
		if (reg & AXP2XX_IRQ2_BATT_TEMP_LOW)
			FUNC2("PMU", "Battery", "low temp", NULL);
		if (reg & AXP2XX_IRQ2_BATT_TEMP_OVER)
			FUNC2("PMU", "Battery", "high temp", NULL);
		FUNC1(sc->dev, AXP2XX_IRQ2_STATUS, AXP2XX_IRQ_ACK);
	}

	FUNC0(sc->dev, AXP2XX_IRQ3_STATUS, &reg, 1);
	if (reg) {
		if (reg & AXP2XX_IRQ3_PEK_SHORT)
			FUNC3(RB_POWEROFF);
		FUNC1(sc->dev, AXP2XX_IRQ3_STATUS, AXP2XX_IRQ_ACK);
	}

	FUNC0(sc->dev, AXP2XX_IRQ4_STATUS, &reg, 1);
	if (reg) {
		FUNC1(sc->dev, AXP2XX_IRQ4_STATUS, AXP2XX_IRQ_ACK);
	}

	FUNC0(sc->dev, AXP2XX_IRQ5_STATUS, &reg, 1);
	if (reg) {
		FUNC1(sc->dev, AXP2XX_IRQ5_STATUS, AXP2XX_IRQ_ACK);
	}
}