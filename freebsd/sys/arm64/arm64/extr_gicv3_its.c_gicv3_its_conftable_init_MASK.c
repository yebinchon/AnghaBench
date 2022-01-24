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
typedef  scalar_t__ vm_offset_t ;
struct gicv3_its_softc {scalar_t__ sc_conf_base; } ;

/* Variables and functions */
 int GIC_PRIORITY_MAX ; 
 int /*<<< orphan*/  LPI_CONFTAB_ALIGN ; 
 int /*<<< orphan*/  LPI_CONFTAB_MAX_ADDR ; 
 int /*<<< orphan*/  LPI_CONFTAB_SIZE ; 
 int LPI_CONF_GROUP1 ; 
 int /*<<< orphan*/  M_GICV3_ITS ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct gicv3_its_softc *sc)
{

	sc->sc_conf_base = (vm_offset_t)FUNC0(LPI_CONFTAB_SIZE,
	    M_GICV3_ITS, M_WAITOK, 0, LPI_CONFTAB_MAX_ADDR, LPI_CONFTAB_ALIGN,
	    0);

	/* Set the default configuration */
	FUNC2((void *)sc->sc_conf_base, GIC_PRIORITY_MAX | LPI_CONF_GROUP1,
	    LPI_CONFTAB_SIZE);

	/* Flush the table to memory */
	FUNC1(sc->sc_conf_base, LPI_CONFTAB_SIZE);
}