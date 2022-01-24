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
struct omap_uhh_softc {int* port_mode; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int OMAP_HS_USB_PORTS ; 
 struct omap_uhh_softc* FUNC0 (int /*<<< orphan*/ ) ; 

int
FUNC1(device_t dev, int port)
{
	struct omap_uhh_softc *isc;

	isc = FUNC0(dev);
	if ((port < 0) || (port >= OMAP_HS_USB_PORTS))
		return (-1);

	return isc->port_mode[port];
}