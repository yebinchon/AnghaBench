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
struct arm_gic_softc {uintptr_t gic_bus; int /*<<< orphan*/  gic_iidr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 uintptr_t GIC_BUS_MAX ; 
 uintptr_t GIC_BUS_UNKNOWN ; 
#define  GIC_IVAR_BUS 129 
#define  GIC_IVAR_HW_REV 128 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct arm_gic_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, device_t child, int which, uintptr_t *result)
{
	struct arm_gic_softc *sc;

	sc = FUNC2(dev);

	switch(which) {
	case GIC_IVAR_HW_REV:
		FUNC1(FUNC0(sc->gic_iidr) < 3,
		    ("arm_gic_read_ivar: Unknown IIDR revision %u (%.08x)",
		     FUNC0(sc->gic_iidr), sc->gic_iidr));
		*result = FUNC0(sc->gic_iidr);
		return (0);
	case GIC_IVAR_BUS:
		FUNC1(sc->gic_bus != GIC_BUS_UNKNOWN,
		    ("arm_gic_read_ivar: Unknown bus type"));
		FUNC1(sc->gic_bus <= GIC_BUS_MAX,
		    ("arm_gic_read_ivar: Invalid bus type %u", sc->gic_bus));
		*result = sc->gic_bus;
		return (0);
	}

	return (ENOENT);
}