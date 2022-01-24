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
struct usbss_softc {scalar_t__ sc_mem_res; int /*<<< orphan*/  sc_mem_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct usbss_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct usbss_softc *sc = FUNC2(dev);

	/* Free resources if any */
	if (sc->sc_mem_res)
		FUNC0(dev, SYS_RES_MEMORY, sc->sc_mem_rid,
		    sc->sc_mem_res);

	/* during module unload there are lots of children leftover */
	FUNC1(dev);

	return (0);
}