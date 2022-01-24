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
typedef  int uint32_t ;
typedef  scalar_t__ u_int ;
struct tegra_pcib_softc {int /*<<< orphan*/  bus_tag; int /*<<< orphan*/  cfg_handle; TYPE_1__** ports; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;
struct TYPE_2__ {scalar_t__ port_idx; int /*<<< orphan*/  cfg_handle; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int TEGRA_PCIB_MAX_PORTS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct tegra_pcib_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tegra_pcib_softc*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static uint32_t
FUNC4(device_t dev, u_int bus, u_int slot, u_int func,
    u_int reg, int bytes)
{
	struct tegra_pcib_softc *sc;
	bus_space_handle_t hndl;
	uint32_t off;
	uint32_t val;
	int rv, i;

	sc = FUNC2(dev);
	if (bus == 0) {
		if (func != 0)
			return (0xFFFFFFFF);
		for (i = 0; i < TEGRA_PCIB_MAX_PORTS; i++) {
			if ((sc->ports[i] != NULL) &&
			    (sc->ports[i]->port_idx == slot)) {
				hndl = sc->ports[i]->cfg_handle;
				off = reg & 0xFFF;
				break;
			}
		}
		if (i >= TEGRA_PCIB_MAX_PORTS)
			return (0xFFFFFFFF);
	} else {
		rv = FUNC3(sc, bus, slot, func, reg);
		if (rv != 0)
			return (0xFFFFFFFF);
		hndl = sc->cfg_handle;
		off = FUNC0(reg);
	}

	val = FUNC1(sc->bus_tag, hndl, off & ~3);
	switch (bytes) {
	case 4:
		break;
	case 2:
		if (off & 3)
			val >>= 16;
		val &= 0xffff;
		break;
	case 1:
		val >>= ((off & 3) << 3);
		val &= 0xff;
		break;
	}
	return val;
}