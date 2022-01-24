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
struct omap_uhh_softc {int /*<<< orphan*/ * uhh_mem_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct omap_uhh_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_uhh_softc*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct omap_uhh_softc *isc = FUNC2(dev);

	/* during module unload there are lots of children leftover */
	FUNC1(dev);

	if (isc->uhh_mem_res) {
		FUNC0(dev, SYS_RES_MEMORY, 0, isc->uhh_mem_res);
		isc->uhh_mem_res = NULL;
	}

	FUNC3(isc);

	return (0);
}