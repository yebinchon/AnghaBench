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
struct TYPE_3__ {int bLength; scalar_t__ bNumConfigurations; int /*<<< orphan*/  iSerialNumber; int /*<<< orphan*/  iProduct; int /*<<< orphan*/  iManufacturer; int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; int /*<<< orphan*/  bMaxPacketSize0; int /*<<< orphan*/  bDeviceProtocol; int /*<<< orphan*/  bDeviceSubClass; int /*<<< orphan*/  bDeviceClass; int /*<<< orphan*/  bcdUSB; int /*<<< orphan*/  bDescriptorType; } ;
struct usb_device {struct libusb20_device* dev; int /*<<< orphan*/  devnum; TYPE_1__ descriptor; int /*<<< orphan*/  filename; TYPE_2__* bus; } ;
struct libusb20_device {struct usb_device* privLuData; } ;
struct LIBUSB20_DEVICE_DESC_DECODED {scalar_t__ bNumConfigurations; int /*<<< orphan*/  iSerialNumber; int /*<<< orphan*/  iProduct; int /*<<< orphan*/  iManufacturer; int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; int /*<<< orphan*/  bMaxPacketSize0; int /*<<< orphan*/  bDeviceProtocol; int /*<<< orphan*/  bDeviceSubClass; int /*<<< orphan*/  bDeviceClass; int /*<<< orphan*/  bcdUSB; int /*<<< orphan*/  bDescriptorType; } ;
struct TYPE_4__ {int /*<<< orphan*/  devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct usb_device*) ; 
 scalar_t__ USB_MAXCONFIG ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct libusb20_device*) ; 
 struct libusb20_device* FUNC5 (int /*<<< orphan*/ *,struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct libusb20_device*) ; 
 int FUNC9 (struct libusb20_device*) ; 
 int FUNC10 (struct libusb20_device*) ; 
 struct LIBUSB20_DEVICE_DESC_DECODED* FUNC11 (struct libusb20_device*) ; 
 int FUNC12 (struct libusb20_device*,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int /*<<< orphan*/ * usb_backend ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 TYPE_2__ usb_global_bus ; 

int
FUNC17(void)
{
	struct libusb20_device *pdev;
	struct usb_device *udev;
	struct LIBUSB20_DEVICE_DESC_DECODED *ddesc;
	int devnum;
	int err;

	/* cleanup after last device search */
	/* close all opened devices, if any */

	while ((pdev = FUNC5(usb_backend, NULL))) {
		udev = pdev->privLuData;
		FUNC4(usb_backend, pdev);
		FUNC8(pdev);
		if (udev != NULL) {
			FUNC1(usb_global_bus.devices, udev);
			FUNC2(udev);
		}
	}

	/* free old USB backend, if any */

	FUNC6(usb_backend);

	/* do a new backend device search */
	usb_backend = FUNC3();
	if (usb_backend == NULL) {
		return (-1);
	}
	/* iterate all devices */

	devnum = 1;
	pdev = NULL;
	while ((pdev = FUNC5(usb_backend, pdev))) {
		udev = FUNC13(sizeof(*udev));
		if (udev == NULL)
			break;

		FUNC14(udev, 0, sizeof(*udev));

		udev->bus = &usb_global_bus;

		FUNC15(udev->filename, sizeof(udev->filename),
		    "/dev/ugen%u.%u",
		    FUNC10(pdev),
		    FUNC9(pdev));

		ddesc = FUNC11(pdev);

		udev->descriptor.bLength = sizeof(udev->descriptor);
		udev->descriptor.bDescriptorType = ddesc->bDescriptorType;
		udev->descriptor.bcdUSB = ddesc->bcdUSB;
		udev->descriptor.bDeviceClass = ddesc->bDeviceClass;
		udev->descriptor.bDeviceSubClass = ddesc->bDeviceSubClass;
		udev->descriptor.bDeviceProtocol = ddesc->bDeviceProtocol;
		udev->descriptor.bMaxPacketSize0 = ddesc->bMaxPacketSize0;
		udev->descriptor.idVendor = ddesc->idVendor;
		udev->descriptor.idProduct = ddesc->idProduct;
		udev->descriptor.bcdDevice = ddesc->bcdDevice;
		udev->descriptor.iManufacturer = ddesc->iManufacturer;
		udev->descriptor.iProduct = ddesc->iProduct;
		udev->descriptor.iSerialNumber = ddesc->iSerialNumber;
		udev->descriptor.bNumConfigurations =
		    ddesc->bNumConfigurations;
		if (udev->descriptor.bNumConfigurations > USB_MAXCONFIG) {
			/* truncate number of configurations */
			udev->descriptor.bNumConfigurations = USB_MAXCONFIG;
		}
		udev->devnum = devnum++;
		/* link together the two structures */
		udev->dev = pdev;
		pdev->privLuData = udev;

		err = FUNC12(pdev, 0);
		if (err == 0) {
			/* XXX get all config descriptors by default */
			FUNC16((void *)pdev);
			FUNC7(pdev);
		}
		FUNC0(usb_global_bus.devices, udev);
	}

	return (devnum - 1);			/* success */
}