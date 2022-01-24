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
struct zy7_slcr_softc {int /*<<< orphan*/ * mem_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct zy7_slcr_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct zy7_slcr_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * zy7_slcr_softc_p ; 
 int /*<<< orphan*/ * zynq7_cpu_reset ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct zy7_slcr_softc *sc = FUNC3(dev);

	FUNC1(dev);

	/* Release memory resource. */
	if (sc->mem_res != NULL)
		FUNC2(dev, SYS_RES_MEMORY,
			     FUNC4(sc->mem_res), sc->mem_res);

	zy7_slcr_softc_p = NULL;
	zynq7_cpu_reset = NULL;

	FUNC0(sc);

	return (0);
}