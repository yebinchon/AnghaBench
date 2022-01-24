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
struct acpi_toshiba_softc {int /*<<< orphan*/  video_handle; } ;
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  FN_ESC_RELEASE 132 
#define  FN_F5_RELEASE 131 
#define  FN_F6_RELEASE 130 
#define  FN_F7_RELEASE 129 
#define  FN_F8_RELEASE 128 
 int /*<<< orphan*/  HCI_GET ; 
 int /*<<< orphan*/  HCI_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  toshiba ; 

__attribute__((used)) static void
FUNC5(struct acpi_toshiba_softc *sc, ACPI_HANDLE h, UINT32 key)
{
	UINT32		arg;

	FUNC0(toshiba);
	switch (key) {
	case FN_F6_RELEASE:
		/* Decrease LCD brightness. */
		FUNC3(h, HCI_GET, &arg);
		if (arg-- == 0)
			arg = 0;
		else
			FUNC3(h, HCI_SET, &arg);
		break;
	case FN_F7_RELEASE:
		/* Increase LCD brightness. */
		FUNC3(h, HCI_GET, &arg);
		if (arg++ == 7)
			arg = 7;
		else
			FUNC3(h, HCI_SET, &arg);
		break;
	case FN_F5_RELEASE:
		/* Cycle through video outputs. */
		FUNC4(h, HCI_GET, &arg);
		arg = (arg + 1) % 7;
		FUNC4(sc->video_handle, HCI_SET, &arg);
		break;
	case FN_F8_RELEASE:
		/* Toggle LCD backlight. */
		FUNC2(h, HCI_GET, &arg);
		arg = (arg != 0) ? 0 : 1;
		FUNC2(h, HCI_SET, &arg);
		break;
	case FN_ESC_RELEASE:
		/* Toggle forcing fan on. */
		FUNC1(h, HCI_GET, &arg);
		arg = (arg != 0) ? 0 : 1;
		FUNC1(h, HCI_SET, &arg);
		break;
	}
}