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
typedef  int /*<<< orphan*/  u_int ;
struct tegra_pcib_softc {int cfg_base_addr; int cfg_cur_offs; int /*<<< orphan*/  dev; int /*<<< orphan*/  cfg_handle; int /*<<< orphan*/  bus_tag; } ;
typedef  int bus_size_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC7(struct tegra_pcib_softc *sc, u_int bus, u_int slot,
    u_int func, u_int reg)
{
	bus_size_t offs;
	int rv;

	offs = sc->cfg_base_addr;
	offs |= FUNC0(bus) | FUNC1(slot) | FUNC3(func) |
	    FUNC2(reg);
	if ((sc->cfg_handle != 0) && (sc->cfg_cur_offs == offs))
		return (0);
	if (sc->cfg_handle != 0)
		FUNC5(sc->bus_tag, sc->cfg_handle, 0x800);

	rv = FUNC4(sc->bus_tag, offs, 0x800, 0, &sc->cfg_handle);
	if (rv != 0)
		FUNC6(sc->dev, "Cannot map config space\n");
	else
		sc->cfg_cur_offs = offs;
	return (rv);
}