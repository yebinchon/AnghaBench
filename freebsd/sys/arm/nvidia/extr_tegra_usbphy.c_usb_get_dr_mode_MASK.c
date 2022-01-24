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
typedef  int /*<<< orphan*/  phandle_t ;
typedef  enum usb_dr_mode { ____Placeholder_usb_dr_mode } usb_dr_mode ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,void**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int USB_DR_MODE_DEVICE ; 
 int USB_DR_MODE_HOST ; 
 int USB_DR_MODE_OTG ; 
 int USB_DR_MODE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static enum usb_dr_mode
FUNC4(device_t dev, phandle_t node, char *name)
{
	char *tmpstr;
	int rv;
	enum usb_dr_mode ret;

	rv = FUNC0(node, name, (void **)&tmpstr);
	if (rv <= 0)
		return (USB_DR_MODE_UNKNOWN);

	ret = USB_DR_MODE_UNKNOWN;
	if (FUNC3(tmpstr, "device") == 0)
		ret = USB_DR_MODE_DEVICE;
	else if (FUNC3(tmpstr, "host") == 0)
		ret = USB_DR_MODE_HOST;
	else if (FUNC3(tmpstr, "otg") == 0)
		ret = USB_DR_MODE_OTG;
	else
		FUNC2(dev, "Unknown dr mode: %s\n", tmpstr);
	FUNC1(tmpstr);
	return (ret);
}