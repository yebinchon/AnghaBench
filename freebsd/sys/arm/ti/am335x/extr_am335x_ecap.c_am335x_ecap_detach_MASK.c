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
struct am335x_ecap_softc {scalar_t__ sc_mem_res; int /*<<< orphan*/  sc_mem_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct am335x_ecap_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct am335x_ecap_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct am335x_ecap_softc*) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct am335x_ecap_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct am335x_ecap_softc *sc;

	sc = FUNC4(dev);

	FUNC0(sc);
	if (sc->sc_mem_res)
		FUNC3(dev, SYS_RES_MEMORY,
		    sc->sc_mem_rid, sc->sc_mem_res);
	FUNC2(sc);

	FUNC1(sc);


	return (0);
}