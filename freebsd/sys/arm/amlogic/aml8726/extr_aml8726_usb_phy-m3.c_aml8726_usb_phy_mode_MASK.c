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
typedef  int uint32_t ;
typedef  scalar_t__ ssize_t ;
typedef  int phandle_t ;

/* Variables and functions */
 int AML_USB_PHY_MISC_ID_OVERIDE_DEVICE ; 
 int AML_USB_PHY_MISC_ID_OVERIDE_EN ; 
 int AML_USB_PHY_MISC_ID_OVERIDE_HOST ; 
 int ENXIO ; 
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int,char*,void**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(const char *dwcotg_path, uint32_t *mode)
{
	char *usb_mode;
	phandle_t node;
	ssize_t len;
	
	if ((node = FUNC0(dwcotg_path)) == -1)
		return (ENXIO);

	if (FUNC3(node, "synopsys,designware-hs-otg2") == 0)
		return (ENXIO);

	*mode = 0;

	len = FUNC1(node, "dr_mode",
	    (void **)&usb_mode);

	if (len <= 0)
		return (0);

	if (FUNC4(usb_mode, "host") == 0) {
		*mode = AML_USB_PHY_MISC_ID_OVERIDE_EN |
		    AML_USB_PHY_MISC_ID_OVERIDE_HOST;
	} else if (FUNC4(usb_mode, "peripheral") == 0) {
		*mode = AML_USB_PHY_MISC_ID_OVERIDE_EN |
		    AML_USB_PHY_MISC_ID_OVERIDE_DEVICE;
	}

	FUNC2(usb_mode);

	return (0);
}