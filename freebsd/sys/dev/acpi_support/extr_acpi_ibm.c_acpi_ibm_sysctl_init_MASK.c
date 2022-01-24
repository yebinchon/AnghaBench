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
struct acpi_ibm_softc {int events_mask_supported; int light_val; int light_cmd_on; int light_cmd_off; int light_set_supported; int fan_levels; int /*<<< orphan*/  ec_handle; void* thermal_updt_supported; int /*<<< orphan*/ * fan_handle; int /*<<< orphan*/  handle; void* light_get_supported; int /*<<< orphan*/ * light_handle; int /*<<< orphan*/ * cmos_handle; int /*<<< orphan*/ * mic_led_handle; } ;
typedef  int /*<<< orphan*/  ACPI_OBJECT_TYPE ;
typedef  int /*<<< orphan*/ * ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ACPI_IBM_METHOD_BLUETOOTH 142 
#define  ACPI_IBM_METHOD_BRIGHTNESS 141 
#define  ACPI_IBM_METHOD_EVENTMASK 140 
#define  ACPI_IBM_METHOD_EVENTS 139 
#define  ACPI_IBM_METHOD_FANLEVEL 138 
#define  ACPI_IBM_METHOD_FANSPEED 137 
#define  ACPI_IBM_METHOD_FANSTATUS 136 
#define  ACPI_IBM_METHOD_HANDLEREVENTS 135 
#define  ACPI_IBM_METHOD_HOTKEY 134 
#define  ACPI_IBM_METHOD_MIC_LED 133 
#define  ACPI_IBM_METHOD_MUTE 132 
#define  ACPI_IBM_METHOD_THERMAL 131 
#define  ACPI_IBM_METHOD_THINKLIGHT 130 
#define  ACPI_IBM_METHOD_VOLUME 129 
#define  ACPI_IBM_METHOD_WLAN 128 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_METHOD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FALSE ; 
 int /*<<< orphan*/  IBM_NAME_KEYLIGHT ; 
 int /*<<< orphan*/  IBM_NAME_THERMAL_GET ; 
 int /*<<< orphan*/  IBM_NAME_THERMAL_UPDT ; 
 int /*<<< orphan*/  IBM_NAME_WLAN_BT_GET ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_ibm_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct acpi_ibm_softc *sc, int method)
{
	int 			dummy;
	ACPI_OBJECT_TYPE 	cmos_t;
	ACPI_HANDLE		ledb_handle;

	switch (method) {
	case ACPI_IBM_METHOD_EVENTS:
		return (TRUE);

	case ACPI_IBM_METHOD_EVENTMASK:
		return (sc->events_mask_supported);

	case ACPI_IBM_METHOD_HOTKEY:
	case ACPI_IBM_METHOD_BRIGHTNESS:
	case ACPI_IBM_METHOD_VOLUME:
	case ACPI_IBM_METHOD_MUTE:
		/* EC is required here, which was already checked before */
		return (TRUE);

	case ACPI_IBM_METHOD_MIC_LED:
		if (FUNC1(FUNC2(sc->handle, "MMTS", &sc->mic_led_handle)))
		{
			/* Turn off mic led by default */
			FUNC5 (sc, 0);
			return(TRUE);
		}
		else
			sc->mic_led_handle = NULL;
		return (FALSE);

	case ACPI_IBM_METHOD_THINKLIGHT:
		sc->cmos_handle = NULL;
		sc->light_get_supported = FUNC1(FUNC4(
		    sc->ec_handle, IBM_NAME_KEYLIGHT, &sc->light_val));

		if ((FUNC1(FUNC2(sc->handle, "\\UCMS", &sc->light_handle)) ||
		     FUNC1(FUNC2(sc->handle, "\\CMOS", &sc->light_handle)) ||
		     FUNC1(FUNC2(sc->handle, "\\CMS", &sc->light_handle))) &&
		     FUNC1(FUNC3(sc->light_handle, &cmos_t)) &&
		     cmos_t == ACPI_TYPE_METHOD) {
			sc->light_cmd_on = 0x0c;
			sc->light_cmd_off = 0x0d;
			sc->cmos_handle = sc->light_handle;
		}
		else if (FUNC1(FUNC2(sc->handle, "\\LGHT", &sc->light_handle))) {
			sc->light_cmd_on = 1;
			sc->light_cmd_off = 0;
		}
		else
			sc->light_handle = NULL;

		sc->light_set_supported = (sc->light_handle &&
		    FUNC0(FUNC2(sc->ec_handle, "LEDB", &ledb_handle)));

		if (sc->light_get_supported)
			return (TRUE);

		if (sc->light_set_supported) {
			sc->light_val = 0;
			return (TRUE);
		}

		return (FALSE);

	case ACPI_IBM_METHOD_BLUETOOTH:
	case ACPI_IBM_METHOD_WLAN:
		if (FUNC1(FUNC4(sc->handle, IBM_NAME_WLAN_BT_GET, &dummy)))
			return (TRUE);
		return (FALSE);

	case ACPI_IBM_METHOD_FANSPEED:
		/*
		 * Some models report the fan speed in levels from 0-7
		 * Newer models report it contiguously
		 */
		sc->fan_levels =
		    (FUNC1(FUNC2(sc->handle, "GFAN", &sc->fan_handle)) ||
		     FUNC1(FUNC2(sc->handle, "\\FSPD", &sc->fan_handle)));
		return (TRUE);

	case ACPI_IBM_METHOD_FANLEVEL:
	case ACPI_IBM_METHOD_FANSTATUS:
		/*
		 * Fan status is only supported on those models,
		 * which report fan RPM contiguously, not in levels
		 */
		if (sc->fan_levels)
			return (FALSE);
		return (TRUE);

	case ACPI_IBM_METHOD_THERMAL:
		if (FUNC1(FUNC4(sc->ec_handle, IBM_NAME_THERMAL_GET, &dummy))) {
			sc->thermal_updt_supported = FUNC1(FUNC4(sc->ec_handle, IBM_NAME_THERMAL_UPDT, &dummy));
			return (TRUE);
		}
		return (FALSE);

	case ACPI_IBM_METHOD_HANDLEREVENTS:
		return (TRUE);
	}
	return (FALSE);
}