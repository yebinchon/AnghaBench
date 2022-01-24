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
typedef  scalar_t__ uint64_t ;
typedef  unsigned int uint32_t ;
typedef  scalar_t__ u_int ;
struct thunder_pem_softc {int /*<<< orphan*/  reg_bst; scalar_t__ sli_window_base; int /*<<< orphan*/  pem_sli_base; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 scalar_t__ PCIE_REGMAX ; 
 scalar_t__ PCI_BUSMAX ; 
 scalar_t__ PCI_FUNCMAX ; 
 scalar_t__ PCI_SLOTMAX ; 
 scalar_t__ PEM_BUS_SHIFT ; 
 scalar_t__ PEM_FUNC_SHIFT ; 
 scalar_t__ PEM_SLOT_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct thunder_pem_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC8(device_t dev, u_int bus, u_int slot,
    u_int func, u_int reg, int bytes)
{
	uint64_t offset;
	uint32_t data;
	struct thunder_pem_softc *sc;
	bus_space_tag_t	t;
	bus_space_handle_t h;

	if ((bus > PCI_BUSMAX) || (slot > PCI_SLOTMAX) ||
	    (func > PCI_FUNCMAX) || (reg > PCIE_REGMAX))
		return (~0U);

	sc = FUNC5(dev);

	/* Calculate offset */
	offset = (bus << PEM_BUS_SHIFT) | (slot << PEM_SLOT_SHIFT) |
	    (func << PEM_FUNC_SHIFT);
	t = sc->reg_bst;
	h = sc->pem_sli_base;

	FUNC0(sc->reg_bst, sc->sli_window_base + offset,
	    PCIE_REGMAX, 0, &h);

	switch (bytes) {
	case 1:
		data = FUNC1(t, h, reg);
		break;
	case 2:
		data = FUNC6(FUNC2(t, h, reg));
		break;
	case 4:
		data = FUNC7(FUNC3(t, h, reg));
		break;
	default:
		data = ~0U;
		break;
	}

	FUNC4(sc->reg_bst, h, PCIE_REGMAX);

	return (data);
}