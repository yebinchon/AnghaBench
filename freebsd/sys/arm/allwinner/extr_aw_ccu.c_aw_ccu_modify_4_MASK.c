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
typedef  int /*<<< orphan*/  uint32_t ;
struct aw_ccu_softc {int /*<<< orphan*/  bst; int /*<<< orphan*/  mtx; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;
typedef  int /*<<< orphan*/  bus_size_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ FUNC0 (struct aw_ccu_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aw_ccu_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, bus_addr_t addr, uint32_t clr, uint32_t set)
{
	struct aw_ccu_softc *sc;
	bus_space_handle_t bsh;
	bus_size_t reg;
	uint32_t val;

	sc = FUNC3(dev);

	if (FUNC0(sc, addr, &bsh, &reg) != 0)
		return (EINVAL);

	FUNC4(&sc->mtx, MA_OWNED);
	val = FUNC1(sc->bst, bsh, reg);
	val &= ~clr;
	val |= set;
	FUNC2(sc->bst, bsh, reg, val);

	return (0);
}