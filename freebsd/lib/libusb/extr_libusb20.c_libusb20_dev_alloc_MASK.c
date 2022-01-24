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
struct libusb20_device {int file; int file_ctrl; int /*<<< orphan*/ * methods; } ;

/* Variables and functions */
 int /*<<< orphan*/  libusb20_dummy_methods ; 
 struct libusb20_device* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct libusb20_device*,int /*<<< orphan*/ ,int) ; 

struct libusb20_device *
FUNC2(void)
{
	struct libusb20_device *pdev;

	pdev = FUNC0(sizeof(*pdev));
	if (pdev == NULL) {
		return (NULL);
	}
	FUNC1(pdev, 0, sizeof(*pdev));

	pdev->file = -1;
	pdev->file_ctrl = -1;
	pdev->methods = &libusb20_dummy_methods;
	return (pdev);
}