#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int /*<<< orphan*/  BaudRate; } ;
typedef  TYPE_1__ UART_DEVICE_PATH ;
struct TYPE_4__ {int /*<<< orphan*/  UID; int /*<<< orphan*/  HID; } ;
typedef  int /*<<< orphan*/  EFI_DEVICE_PATH ;
typedef  TYPE_2__ ACPI_HID_DEVICE_PATH ;

/* Variables and functions */
 scalar_t__ ACPI_ADR_DP ; 
 scalar_t__ ACPI_DEVICE_PATH ; 
 scalar_t__ ACPI_DP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int EFI_SUCCESS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ HARDWARE_DEVICE_PATH ; 
 scalar_t__ HW_PCI_DP ; 
 scalar_t__ MESSAGING_DEVICE_PATH ; 
 scalar_t__ MSG_UART_DP ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int RB_MULTIPLE ; 
 int RB_SERIAL ; 
 int FUNC4 (char*,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

int
FUNC6(void)
{
	int how, rv;
	int vid_seen = 0, com_seen = 0, seen = 0;
	size_t sz;
	char buf[4096], *ep;
	EFI_DEVICE_PATH *node;
	ACPI_HID_DEVICE_PATH  *acpi;
	UART_DEVICE_PATH  *uart;
	bool pci_pending;

	how = 0;
	sz = sizeof(buf);
	rv = FUNC4("ConOut", buf, &sz);
	if (rv != EFI_SUCCESS) {
		/* If we don't have any ConOut default to serial */
		how = RB_SERIAL;
		goto out;
	}
	ep = buf + sz;
	node = (EFI_DEVICE_PATH *)buf;
	while ((char *)node < ep) {
		pci_pending = false;
		if (FUNC1(node) == ACPI_DEVICE_PATH &&
		    FUNC0(node) == ACPI_DP) {
			/* Check for Serial node */
			acpi = (void *)node;
			if (FUNC2(acpi->HID) == 0x501) {
				FUNC5("efi_8250_uid", acpi->UID);
				com_seen = ++seen;
			}
		} else if (FUNC1(node) == MESSAGING_DEVICE_PATH &&
		    FUNC0(node) == MSG_UART_DP) {

			uart = (void *)node;
			FUNC5("efi_com_speed", uart->BaudRate);
		} else if (FUNC1(node) == ACPI_DEVICE_PATH &&
		    FUNC0(node) == ACPI_ADR_DP) {
			/* Check for AcpiAdr() Node for video */
			vid_seen = ++seen;
		} else if (FUNC1(node) == HARDWARE_DEVICE_PATH &&
		    FUNC0(node) == HW_PCI_DP) {
			/*
			 * Note, vmware fusion has a funky console device
			 *	PciRoot(0x0)/Pci(0xf,0x0)
			 * which we can only detect at the end since we also
			 * have to cope with:
			 *	PciRoot(0x0)/Pci(0x1f,0x0)/Serial(0x1)
			 * so only match it if it's last.
			 */
			pci_pending = true;
		}
		node = FUNC3(node); /* Skip the end node */
	}
	if (pci_pending && vid_seen == 0)
		vid_seen = ++seen;

	/*
	 * Truth table for RB_MULTIPLE | RB_SERIAL
	 * Value		Result
	 * 0			Use only video console
	 * RB_SERIAL		Use only serial console
	 * RB_MULTIPLE		Use both video and serial console
	 *			(but video is primary so gets rc messages)
	 * both			Use both video and serial console
	 *			(but serial is primary so gets rc messages)
	 *
	 * Try to honor this as best we can. If only one of serial / video
	 * found, then use that. Otherwise, use the first one we found.
	 * This also implies if we found nothing, default to video.
	 */
	how = 0;
	if (vid_seen && com_seen) {
		how |= RB_MULTIPLE;
		if (com_seen < vid_seen)
			how |= RB_SERIAL;
	} else if (com_seen)
		how |= RB_SERIAL;
out:
	return (how);
}