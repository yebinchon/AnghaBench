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
struct usb_linux_softc {int /*<<< orphan*/  sc_ui; } ;
struct usb_driver {int (* suspend ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct usb_linux_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_driver* FUNC2 (struct usb_linux_softc*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct usb_linux_softc *sc = FUNC0(dev);
	struct usb_driver *udrv = FUNC2(sc);
	int err;

	if (udrv && udrv->suspend) {
		err = (udrv->suspend) (sc->sc_ui, 0);
	}
	return (0);
}