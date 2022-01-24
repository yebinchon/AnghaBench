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
struct libusb20_backend {TYPE_1__* methods; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* exit_backend ) (struct libusb20_backend*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct libusb20_backend*) ; 
 int /*<<< orphan*/  FUNC1 (struct libusb20_backend*,struct libusb20_device*) ; 
 struct libusb20_device* FUNC2 (struct libusb20_backend*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct libusb20_backend*) ; 

void
FUNC5(struct libusb20_backend *pbe)
{
	struct libusb20_device *pdev;

	if (pbe == NULL) {
		/* be NULL safe */
		return;
	}
	while ((pdev = FUNC2(pbe, NULL))) {
		FUNC1(pbe, pdev);
		FUNC3(pdev);
	}
	if (pbe->methods->exit_backend) {
		pbe->methods->exit_backend(pbe);
	}
	/* free backend */
	FUNC0(pbe);
}