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
struct tcd_conf {int channel; int smod; int dmod; int ssize; int dsize; int soff; int doff; int nmajor; int majorelink; int majorelinkch; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  dlast_sga; int /*<<< orphan*/  slast; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  ih_user; int /*<<< orphan*/  ih; } ;
struct edma_softc {int dummy; } ;
struct edma_channel {int /*<<< orphan*/  ih_user; int /*<<< orphan*/  ih; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_EEI ; 
 int /*<<< orphan*/  DMA_ERQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (struct edma_softc*,int /*<<< orphan*/ ) ; 
 int TCD_ATTR_DMOD_SHIFT ; 
 int TCD_ATTR_DSIZE_SHIFT ; 
 int TCD_ATTR_SMOD_SHIFT ; 
 int TCD_ATTR_SSIZE_SHIFT ; 
 int TCD_CSR_INTMAJOR ; 
 int TCD_CSR_MAJORELINK ; 
 int TCD_CSR_MAJORELINKCH_SHIFT ; 
 int /*<<< orphan*/  FUNC12 (struct edma_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct edma_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct edma_softc*,int /*<<< orphan*/ ,int) ; 
 struct edma_channel* edma_map ; 

__attribute__((used)) static int
FUNC15(struct edma_softc *sc, struct tcd_conf *tcd)
{
	struct edma_channel *ch;
	int chnum;
	int reg;

	chnum = tcd->channel;

	ch = &edma_map[chnum];
	ch->ih = tcd->ih;
	ch->ih_user = tcd->ih_user;

	FUNC13(sc, FUNC8(chnum), tcd->saddr);
	FUNC13(sc, FUNC4(chnum), tcd->daddr);

	reg = (tcd->smod << TCD_ATTR_SMOD_SHIFT);
	reg |= (tcd->dmod << TCD_ATTR_DMOD_SHIFT);
	reg |= (tcd->ssize << TCD_ATTR_SSIZE_SHIFT);
	reg |= (tcd->dsize << TCD_ATTR_DSIZE_SHIFT);
	FUNC12(sc, FUNC0(chnum), reg);

	FUNC12(sc, FUNC10(chnum), tcd->soff);
	FUNC12(sc, FUNC6(chnum), tcd->doff);
	FUNC13(sc, FUNC9(chnum), tcd->slast);
	FUNC13(sc, FUNC5(chnum), tcd->dlast_sga);
	FUNC13(sc, FUNC7(chnum), tcd->nbytes);

	reg = tcd->nmajor; /* Current Major Iteration Count */
	FUNC12(sc, FUNC2(chnum), reg);
	FUNC12(sc, FUNC1(chnum), reg);

	reg = (TCD_CSR_INTMAJOR);
	if(tcd->majorelink == 1) {
		reg |= TCD_CSR_MAJORELINK;
		reg |= (tcd->majorelinkch << TCD_CSR_MAJORELINKCH_SHIFT);
	}
	FUNC12(sc, FUNC3(chnum), reg);

	/* Enable requests */
	reg = FUNC11(sc, DMA_ERQ);
	reg |= (0x1 << chnum);
	FUNC14(sc, DMA_ERQ, reg);

	/* Enable error interrupts */
	reg = FUNC11(sc, DMA_EEI);
	reg |= (0x1 << chnum);
	FUNC14(sc, DMA_EEI, reg);

	return (0);
}