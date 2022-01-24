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
struct aac_softc {scalar_t__ aac_hwif; int /*<<< orphan*/ * aac_regs_res1; int /*<<< orphan*/  aac_dev; int /*<<< orphan*/ * aac_regs_res0; scalar_t__ aac_parent_dmat; scalar_t__ aac_buffer_dmat; int /*<<< orphan*/ * aac_irq; scalar_t__ aac_intr; scalar_t__ aac_common_dmat; int /*<<< orphan*/  aac_common_dmamap; scalar_t__ aac_common; int /*<<< orphan*/  aac_commands; scalar_t__ aac_fib_dmat; int /*<<< orphan*/ * aac_dev_t; } ;

/* Variables and functions */
 scalar_t__ AAC_HWIF_NARK ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  M_AACBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct aac_softc*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct aac_softc*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11(struct aac_softc *sc)
{

	FUNC8(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	/* remove the control device */
	if (sc->aac_dev_t != NULL)
		FUNC6(sc->aac_dev_t);

	/* throw away any FIB buffers, discard the FIB DMA tag */
	FUNC0(sc);
	if (sc->aac_fib_dmat)
		FUNC1(sc->aac_fib_dmat);

	FUNC7(sc->aac_commands, M_AACBUF);

	/* destroy the common area */
	if (sc->aac_common) {
		FUNC2(sc->aac_common_dmat, sc->aac_common_dmamap);
		FUNC3(sc->aac_common_dmat, sc->aac_common,
				sc->aac_common_dmamap);
	}
	if (sc->aac_common_dmat)
		FUNC1(sc->aac_common_dmat);

	/* disconnect the interrupt handler */
	if (sc->aac_intr)
		FUNC5(sc->aac_dev, sc->aac_irq, sc->aac_intr);
	if (sc->aac_irq != NULL) {
		FUNC4(sc->aac_dev, SYS_RES_IRQ,
		    FUNC10(sc->aac_irq), sc->aac_irq);
		FUNC9(sc->aac_dev);
	}

	/* destroy data-transfer DMA tag */
	if (sc->aac_buffer_dmat)
		FUNC1(sc->aac_buffer_dmat);

	/* destroy the parent DMA tag */
	if (sc->aac_parent_dmat)
		FUNC1(sc->aac_parent_dmat);

	/* release the register window mapping */
	if (sc->aac_regs_res0 != NULL)
		FUNC4(sc->aac_dev, SYS_RES_MEMORY,
		    FUNC10(sc->aac_regs_res0), sc->aac_regs_res0);
	if (sc->aac_hwif == AAC_HWIF_NARK && sc->aac_regs_res1 != NULL)
		FUNC4(sc->aac_dev, SYS_RES_MEMORY,
		    FUNC10(sc->aac_regs_res1), sc->aac_regs_res1);
}