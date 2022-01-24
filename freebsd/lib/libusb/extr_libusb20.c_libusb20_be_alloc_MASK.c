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
struct libusb20_backend_methods {int /*<<< orphan*/  (* init_backend ) (struct libusb20_backend*) ;} ;
struct libusb20_backend {struct libusb20_backend_methods const* methods; int /*<<< orphan*/  usb_devs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct libusb20_backend* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct libusb20_backend*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct libusb20_backend*) ; 

struct libusb20_backend *
FUNC4(const struct libusb20_backend_methods *methods)
{
	struct libusb20_backend *pbe;

	pbe = FUNC1(sizeof(*pbe));
	if (pbe == NULL) {
		return (NULL);
	}
	FUNC2(pbe, 0, sizeof(*pbe));

	FUNC0(&(pbe->usb_devs));

	pbe->methods = methods;		/* set backend methods */

	/* do the initial device scan */
	if (pbe->methods->init_backend) {
		pbe->methods->init_backend(pbe);
	}
	return (pbe);
}