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
struct thunder_pem_softc {int /*<<< orphan*/ * reg; int /*<<< orphan*/  mem_rman; int /*<<< orphan*/  io_rman; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct thunder_pem_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(device_t dev)
{
	struct thunder_pem_softc *sc;

	sc = FUNC1(dev);

	FUNC2(&sc->io_rman);
	FUNC2(&sc->mem_rman);

	if (sc->reg != NULL)
		FUNC0(dev, SYS_RES_MEMORY, sc->reg);
}