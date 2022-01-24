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
typedef  int vm_paddr_t ;
typedef  int uint64_t ;
struct gicv3_its_softc {int /*<<< orphan*/  sc_its_flags; int /*<<< orphan*/  sc_its_cmd_base; scalar_t__ sc_its_cmd_next_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  GITS_CBASER ; 
 int GITS_CBASER_CACHE_MASK ; 
 int GITS_CBASER_CACHE_NIN ; 
 int GITS_CBASER_CACHE_NIWAWB ; 
 int GITS_CBASER_CACHE_SHIFT ; 
 int GITS_CBASER_SHARE_IS ; 
 int GITS_CBASER_SHARE_MASK ; 
 int GITS_CBASER_SHARE_NS ; 
 int GITS_CBASER_SHARE_SHIFT ; 
 int GITS_CBASER_VALID ; 
 int /*<<< orphan*/  GITS_CWRITER ; 
 int /*<<< orphan*/  ITS_CMDQ_ALIGN ; 
 int ITS_CMDQ_SIZE ; 
 int /*<<< orphan*/  ITS_FLAGS_CMDQ_FLUSH ; 
 int /*<<< orphan*/  M_GICV3_ITS ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gicv3_its_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gicv3_its_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct gicv3_its_softc *sc)
{
	vm_paddr_t cmd_paddr;
	uint64_t reg, tmp;

	/* Set up the command circular buffer */
	sc->sc_its_cmd_base = FUNC0(ITS_CMDQ_SIZE, M_GICV3_ITS,
	    M_WAITOK | M_ZERO, 0, (1ul << 48) - 1, ITS_CMDQ_ALIGN, 0);
	sc->sc_its_cmd_next_idx = 0;

	cmd_paddr = FUNC3(sc->sc_its_cmd_base);

	/* Set the base of the command buffer */
	reg = GITS_CBASER_VALID |
	    (GITS_CBASER_CACHE_NIWAWB << GITS_CBASER_CACHE_SHIFT) |
	    cmd_paddr | (GITS_CBASER_SHARE_IS << GITS_CBASER_SHARE_SHIFT) |
	    (ITS_CMDQ_SIZE / 4096 - 1);
	FUNC2(sc, GITS_CBASER, reg);

	/* Read back to check for fixed value fields */
	tmp = FUNC1(sc, GITS_CBASER);

	if ((tmp & GITS_CBASER_SHARE_MASK) !=
	    (GITS_CBASER_SHARE_IS << GITS_CBASER_SHARE_SHIFT)) {
		/* Check if the hardware reported non-shareable */
		if ((tmp & GITS_CBASER_SHARE_MASK) ==
		    (GITS_CBASER_SHARE_NS << GITS_CBASER_SHARE_SHIFT)) {
			/* If so remove the cache attribute */
			reg &= ~GITS_CBASER_CACHE_MASK;
			reg &= ~GITS_CBASER_SHARE_MASK;
			/* Set to Non-cacheable, Non-shareable */
			reg |= GITS_CBASER_CACHE_NIN << GITS_CBASER_CACHE_SHIFT;
			reg |= GITS_CBASER_SHARE_NS << GITS_CBASER_SHARE_SHIFT;

			FUNC2(sc, GITS_CBASER, reg);
		}

		/* The command queue has to be flushed after each command */
		sc->sc_its_flags |= ITS_FLAGS_CMDQ_FLUSH;
	}

	/* Get the next command from the start of the buffer */
	FUNC2(sc, GITS_CWRITER, 0x0);
}