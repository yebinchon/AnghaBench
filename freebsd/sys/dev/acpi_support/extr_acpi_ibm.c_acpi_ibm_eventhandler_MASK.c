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
struct acpi_ibm_softc {int /*<<< orphan*/  ec_dev; int /*<<< orphan*/  light_val; int /*<<< orphan*/  wlan_bt_flags; } ;
typedef  int UINT64 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IBM_EC_BRIGHTNESS ; 
 int IBM_EC_MASK_BRI ; 
 int IBM_EC_MASK_MUTE ; 
 int IBM_EC_MASK_VOL ; 
 int /*<<< orphan*/  IBM_EC_VOLUME ; 
#define  IBM_EVENT_BLUETOOTH 135 
#define  IBM_EVENT_BRIGHTNESS_DOWN 134 
#define  IBM_EVENT_BRIGHTNESS_UP 133 
#define  IBM_EVENT_MUTE 132 
#define  IBM_EVENT_SUSPEND_TO_RAM 131 
#define  IBM_EVENT_THINKLIGHT 130 
#define  IBM_EVENT_VOLUME_DOWN 129 
#define  IBM_EVENT_VOLUME_UP 128 
 int /*<<< orphan*/  POWER_SLEEP_STATE_SUSPEND ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_ibm_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_ibm_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_ibm_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_ibm_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct acpi_ibm_softc*,int) ; 
 int /*<<< orphan*/  ibm ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct acpi_ibm_softc *sc, int arg)
{
	int			val;
	UINT64			val_ec;
	ACPI_STATUS		status;

	FUNC2(ibm);
	switch (arg) {
	case IBM_EVENT_SUSPEND_TO_RAM:
		FUNC9(POWER_SLEEP_STATE_SUSPEND);
		break;

	case IBM_EVENT_BLUETOOTH:
		FUNC4(sc, (sc->wlan_bt_flags == 0));
		break;

	case IBM_EVENT_BRIGHTNESS_UP:
	case IBM_EVENT_BRIGHTNESS_DOWN:
		/* Read the current brightness */
		status = FUNC0(sc->ec_dev, IBM_EC_BRIGHTNESS,
				      &val_ec, 1);
		if (FUNC1(status))
			return;

		val = val_ec & IBM_EC_MASK_BRI;
		val = (arg == IBM_EVENT_BRIGHTNESS_UP) ? val + 1 : val - 1;
		FUNC5(sc, val);
		break;

	case IBM_EVENT_THINKLIGHT:
		FUNC7(sc, (sc->light_val == 0));
		break;

	case IBM_EVENT_VOLUME_UP:
	case IBM_EVENT_VOLUME_DOWN:
		/* Read the current volume */
		status = FUNC0(sc->ec_dev, IBM_EC_VOLUME, &val_ec, 1);
		if (FUNC1(status))
			return;

		val = val_ec & IBM_EC_MASK_VOL;
		val = (arg == IBM_EVENT_VOLUME_UP) ? val + 1 : val - 1;
		FUNC8(sc, val);
		break;

	case IBM_EVENT_MUTE:
		/* Read the current value */
		status = FUNC0(sc->ec_dev, IBM_EC_VOLUME, &val_ec, 1);
		if (FUNC1(status))
			return;

		val = ((val_ec & IBM_EC_MASK_MUTE) == IBM_EC_MASK_MUTE);
		FUNC6(sc, (val == 0));
		break;

	default:
		break;
	}
	FUNC3(ibm);
}