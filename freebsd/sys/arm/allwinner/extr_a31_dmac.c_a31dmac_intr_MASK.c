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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  size_t u_int ;
struct a31dmac_softc {int nchans; TYPE_1__* chans; } ;
struct TYPE_2__ {int /*<<< orphan*/  callbackarg; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_IRQ_PEND_REG0 ; 
 int /*<<< orphan*/  DMA_IRQ_PEND_REG1 ; 
 int DMA_PKG_IRQ_MASK ; 
 int FUNC0 (struct a31dmac_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct a31dmac_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *priv)
{
	struct a31dmac_softc *sc;
	uint32_t pend0, pend1, bit;
	uint64_t pend, mask;
	u_int index;

	sc = priv;
	pend0 = FUNC0(sc, DMA_IRQ_PEND_REG0);
	pend1 = sc->nchans > 8 ? FUNC0(sc, DMA_IRQ_PEND_REG1) : 0;
	if (pend0 == 0 && pend1 == 0)
		return;

	if (pend0 != 0)
		FUNC1(sc, DMA_IRQ_PEND_REG0, pend0);
	if (pend1 != 0)
		FUNC1(sc, DMA_IRQ_PEND_REG1, pend1);

	pend = pend0 | ((uint64_t)pend1 << 32);

	while ((bit = FUNC2(pend & DMA_PKG_IRQ_MASK)) != 0) {
		mask = (1U << (bit - 1));
		pend &= ~mask;
		index = (bit - 1) / 4;

		if (index >= sc->nchans)
			continue;
		if (sc->chans[index].callback == NULL)
			continue;
		sc->chans[index].callback(sc->chans[index].callbackarg);
	}
}