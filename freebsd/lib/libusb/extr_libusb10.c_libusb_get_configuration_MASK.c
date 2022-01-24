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
struct libusb20_device {int dummy; } ;
struct TYPE_2__ {int bConfigurationValue; } ;
struct libusb20_config {TYPE_1__ desc; } ;

/* Variables and functions */
 int LIBUSB_ERROR_INVALID_PARAM ; 
 int LIBUSB_ERROR_NO_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct libusb20_config*) ; 
 struct libusb20_config* FUNC1 (struct libusb20_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct libusb20_device*) ; 

int
FUNC3(struct libusb20_device *pdev, int *config)
{
	struct libusb20_config *pconf;

	if (pdev == NULL || config == NULL)
		return (LIBUSB_ERROR_INVALID_PARAM);

	pconf = FUNC1(pdev, FUNC2(pdev));
	if (pconf == NULL)
		return (LIBUSB_ERROR_NO_MEM);

	*config = pconf->desc.bConfigurationValue;

	FUNC0(pconf);

	return (0);
}