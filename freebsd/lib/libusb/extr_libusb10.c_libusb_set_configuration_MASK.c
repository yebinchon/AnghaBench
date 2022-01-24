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
struct libusb_device {int /*<<< orphan*/  dev_poll; int /*<<< orphan*/  ctx; } ;
struct libusb20_device {int dummy; } ;
struct TYPE_2__ {int bConfigurationValue; } ;
struct libusb20_config {TYPE_1__ desc; } ;

/* Variables and functions */
 int LIBUSB_ERROR_INVALID_PARAM ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (struct libusb20_config*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct libusb20_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct libusb_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct libusb20_config* FUNC4 (struct libusb20_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct libusb20_device*) ; 
 int FUNC6 (struct libusb20_device*,int) ; 
 struct libusb_device* FUNC7 (struct libusb20_device*) ; 

int
FUNC8(struct libusb20_device *pdev, int configuration)
{
	struct libusb20_config *pconf;
	struct libusb_device *dev;
	int err;
	uint8_t i;

	dev = FUNC7(pdev);
	if (dev == NULL)
		return (LIBUSB_ERROR_INVALID_PARAM);

	if (configuration < 1) {
		/* unconfigure */
		i = 255;
	} else {
		for (i = 0; i != 255; i++) {
			uint8_t found;

			pconf = FUNC4(pdev, i);
			if (pconf == NULL)
				return (LIBUSB_ERROR_INVALID_PARAM);
			found = (pconf->desc.bConfigurationValue
			    == configuration);
			FUNC0(pconf);

			if (found)
				goto set_config;
		}
		return (LIBUSB_ERROR_INVALID_PARAM);
	}

set_config:

	FUNC2(dev);

	FUNC3(dev->ctx, &dev->dev_poll);

	err = FUNC6(pdev, i);

	FUNC1(dev->ctx, &dev->dev_poll, pdev, FUNC5(pdev), POLLIN |
	    POLLOUT | POLLRDNORM | POLLWRNORM);

	return (err ? LIBUSB_ERROR_INVALID_PARAM : 0);
}