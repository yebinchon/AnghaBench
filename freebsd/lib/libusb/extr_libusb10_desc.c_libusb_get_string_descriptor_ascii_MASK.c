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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  libusb_device_handle ;

/* Variables and functions */
 int LIBUSB_ERROR_INVALID_PARAM ; 
 int LIBUSB_ERROR_OTHER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC1 (char*) ; 

int
FUNC2(libusb_device_handle *pdev,
    uint8_t desc_index, unsigned char *data, int length)
{
	if (pdev == NULL || data == NULL || length < 1)
		return (LIBUSB_ERROR_INVALID_PARAM);

	if (length > 65535)
		length = 65535;

	/* put some default data into the destination buffer */
	data[0] = 0;

	if (FUNC0(pdev, desc_index,
	    data, length) == 0)
		return (FUNC1((char *)data));

	return (LIBUSB_ERROR_OTHER);
}