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
struct libusb20_device {TYPE_1__* methods; } ;
struct TYPE_2__ {int (* process ) (struct libusb20_device*) ;} ;

/* Variables and functions */
 int FUNC0 (struct libusb20_device*) ; 

int
FUNC1(struct libusb20_device *pdev)
{
	int error;

	error = pdev->methods->process(pdev);
	return (error);
}