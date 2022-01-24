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
struct TYPE_2__ {int /*<<< orphan*/ * le_prev; } ;
struct usb_linux_softc {int /*<<< orphan*/  sc_ui; int /*<<< orphan*/  sc_fbsd_udev; struct usb_driver* sc_udrv; TYPE_1__ sc_attached_list; } ;
struct usb_driver {int /*<<< orphan*/  (* disconnect ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC0 (struct usb_linux_softc*,int /*<<< orphan*/ ) ; 
 struct usb_linux_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sc_attached_list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct usb_linux_softc *sc = FUNC1(dev);
	struct usb_driver *udrv = NULL;

	FUNC2(&Giant);
	if (sc->sc_attached_list.le_prev) {
		FUNC0(sc, sc_attached_list);
		sc->sc_attached_list.le_prev = NULL;
		udrv = sc->sc_udrv;
		sc->sc_udrv = NULL;
	}
	FUNC3(&Giant);

	if (udrv && udrv->disconnect) {
		(udrv->disconnect) (sc->sc_ui);
	}
	/*
	 * Make sure that we free all FreeBSD USB transfers belonging to
	 * this Linux "usb_interface", hence they will most likely not be
	 * needed any more.
	 */
	FUNC5(sc->sc_fbsd_udev, sc->sc_ui);
	return (0);
}