#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct libusb_config_descriptor {scalar_t__ bConfigurationValue; } ;
struct libusb20_device {int dummy; } ;
struct LIBUSB20_DEVICE_DESC_DECODED {int bNumConfigurations; } ;
struct TYPE_4__ {struct libusb20_device* os_priv; } ;
typedef  TYPE_1__ libusb_device ;

/* Variables and functions */
 int LIBUSB_ERROR_INVALID_PARAM ; 
 int LIBUSB_ERROR_NOT_FOUND ; 
 struct LIBUSB20_DEVICE_DESC_DECODED* FUNC0 (struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct libusb_config_descriptor*) ; 
 int FUNC2 (TYPE_1__*,int,struct libusb_config_descriptor**) ; 

int
FUNC3(libusb_device *dev,
    uint8_t bConfigurationValue, struct libusb_config_descriptor **config)
{
	struct LIBUSB20_DEVICE_DESC_DECODED *pdesc;
	struct libusb20_device *pdev;
	int i;
	int err;

	if (dev == NULL || config == NULL)
		return (LIBUSB_ERROR_INVALID_PARAM);

	pdev = dev->os_priv;
	pdesc = FUNC0(pdev);

	for (i = 0; i < pdesc->bNumConfigurations; i++) {
		err = FUNC2(dev, i, config);
		if (err)
			return (err);

		if ((*config)->bConfigurationValue == bConfigurationValue)
			return (0);	/* success */

		FUNC1(*config);
	}

	*config = NULL;

	return (LIBUSB_ERROR_NOT_FOUND);
}