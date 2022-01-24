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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  os_priv; } ;
typedef  TYPE_1__ libusb_device ;

/* Variables and functions */
#define  LIBUSB20_SPEED_FULL 129 
#define  LIBUSB20_SPEED_LOW 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC2(libusb_device *dev, uint8_t endpoint)
{
	int multiplier;
	int ret;

	ret = FUNC1(dev, endpoint);

	switch (FUNC0(dev->os_priv)) {
	case LIBUSB20_SPEED_LOW:
	case LIBUSB20_SPEED_FULL:
		break;
	default:
		if (ret > -1) {
			multiplier = (1 + ((ret >> 11) & 3));
			if (multiplier > 3)
				multiplier = 3;
			ret = (ret & 0x7FF) * multiplier;
		}
		break;
	}
	return (ret);
}