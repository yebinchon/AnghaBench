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
typedef  int uint64_t ;
struct thunder_pem_softc {int /*<<< orphan*/  id; int /*<<< orphan*/  dev; int /*<<< orphan*/  reg_bsh; int /*<<< orphan*/  reg_bst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  PCIERC_CFG032 ; 
 int PEM_CFG_LINK_MASK ; 
 int PEM_CFG_LINK_RDY ; 
 int /*<<< orphan*/  PEM_CTL_STATUS ; 
 int PEM_LINK_DLLA ; 
 int PEM_LINK_ENABLE ; 
 int PEM_LINK_LT ; 
 int /*<<< orphan*/  PEM_ON_REG ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct thunder_pem_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct thunder_pem_softc *sc)
{
	uint64_t regval;

	/* check whether PEM is safe to access. */
	regval = FUNC1(sc->reg_bst, sc->reg_bsh, PEM_ON_REG);
	if ((regval & PEM_CFG_LINK_MASK) != PEM_CFG_LINK_RDY) {
		FUNC3(sc->dev, "PEM%d is not ON\n", sc->id);
		return (ENXIO);
	}

	regval = FUNC1(sc->reg_bst, sc->reg_bsh, PEM_CTL_STATUS);
	regval |= PEM_LINK_ENABLE;
	FUNC2(sc->reg_bst, sc->reg_bsh, PEM_CTL_STATUS, regval);

	/* Wait 1ms as per Cavium specification */
	FUNC0(1000);

	regval = FUNC4(sc, PCIERC_CFG032);

	if (((regval & PEM_LINK_DLLA) == 0) || ((regval & PEM_LINK_LT) != 0)) {
		FUNC3(sc->dev, "PCIe RC: Port %d Link Timeout\n",
		    sc->id);
		return (ENXIO);
	}

	return (0);
}