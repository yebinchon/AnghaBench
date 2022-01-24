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
struct tps65217_status_reg {int acpwr; scalar_t__ pb; } ;
struct tps65217_int_reg {scalar_t__ aci; scalar_t__ pbi; } ;
struct am335x_pmic_softc {int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  notify_buf ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  RB_POWEROFF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  TPS65217_INT_REG ; 
 int /*<<< orphan*/  TPS65217_STATUS_REG ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct am335x_pmic_softc *sc = (struct am335x_pmic_softc *)arg;
	struct tps65217_status_reg status_reg;
	struct tps65217_int_reg int_reg;
	int rv;
	char notify_buf[16];

	FUNC1();
	rv = FUNC2(sc->sc_dev, TPS65217_INT_REG, (uint8_t *)&int_reg, 1);
	if (rv != 0) {
		FUNC4(sc->sc_dev, "Cannot read interrupt register\n");
		FUNC0();
		return;
	}
	rv = FUNC2(sc->sc_dev, TPS65217_STATUS_REG, (uint8_t *)&status_reg, 1);
	if (rv != 0) {
		FUNC4(sc->sc_dev, "Cannot read status register\n");
		FUNC0();
		return;
	}
	FUNC0();

	if (int_reg.pbi && status_reg.pb)
		FUNC5(RB_POWEROFF);
	if (int_reg.aci) {
		FUNC6(notify_buf, sizeof(notify_buf), "notify=0x%02x",
		    status_reg.acpwr);
		FUNC3("ACPI", "ACAD", "power", notify_buf, M_NOWAIT);
	}
}