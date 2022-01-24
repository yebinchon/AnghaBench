#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_2__ {int HID; int UID; } ;
typedef  int /*<<< orphan*/  EFI_DEVICE_PATH ;
typedef  TYPE_1__ ACPI_HID_DEVICE_PATH ;

/* Variables and functions */
#define  ACPI_DP 129 
#define  ACPI_EXTENDED_DP 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int PNP_EISA_ID_CONST ; 
 int PNP_EISA_ID_MASK ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,int,...) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static char *
FUNC5(EFI_DEVICE_PATH *node, char *suffix)
{
	uint8_t subtype = FUNC0(node);
	ACPI_HID_DEVICE_PATH *acpi = (ACPI_HID_DEVICE_PATH *)node;
	char *name, *tail;

	tail = FUNC3(suffix);
	switch (subtype) {
	case ACPI_DP:
		if ((acpi->HID & PNP_EISA_ID_MASK) == PNP_EISA_ID_CONST) {
			switch (FUNC1 (acpi->HID)) {
			case 0x0a03:
				if (FUNC2(&name, "PciRoot(%x)%s",
				    acpi->UID, tail) < 0)
					name = NULL;
				break;
			case 0x0a08:
				if (FUNC2(&name, "PcieRoot(%x)%s",
				    acpi->UID, tail) < 0)
					name = NULL;
				break;
			case 0x0604:
				if (FUNC2(&name, "Floppy(%x)%s",
				    acpi->UID, tail) < 0)
					name = NULL;
				break;
			case 0x0301:
				if (FUNC2(&name, "Keyboard(%x)%s",
				    acpi->UID, tail) < 0)
					name = NULL;
				break;
			case 0x0501:
				if (FUNC2(&name, "Serial(%x)%s",
				    acpi->UID, tail) < 0)
					name = NULL;
				break;
			case 0x0401:
				if (FUNC2(&name, "ParallelPort(%x)%s",
				    acpi->UID, tail) < 0)
					name = NULL;
				break;
			default:
				if (FUNC2(&name, "Acpi(PNP%04x,%x)%s",
				    FUNC1(acpi->HID),
				    acpi->UID, tail) < 0)
					name = NULL;
				break;
			}
		} else {
			if (FUNC2(&name, "Acpi(%08x,%x)%s",
			    acpi->HID, acpi->UID, tail) < 0)
				name = NULL;
		}
		break;
	case ACPI_EXTENDED_DP:
	default:
		if (FUNC2(&name, "UnknownACPI(%x)%s", subtype, tail) < 0)
			name = NULL;
		break;
	}
	FUNC4(tail);
	return (name);
}