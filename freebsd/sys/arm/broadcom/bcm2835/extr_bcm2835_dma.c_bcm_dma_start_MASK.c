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
typedef  int /*<<< orphan*/  vm_paddr_t ;
struct bcm_dma_softc {TYPE_1__* sc_dma_ch; int /*<<< orphan*/  sc_mem; int /*<<< orphan*/  sc_dma_tag; } ;
struct bcm_dma_cb {int len; void* dst; void* src; } ;
struct TYPE_2__ {int flags; struct bcm_dma_cb* cb; int /*<<< orphan*/  vc_cb; int /*<<< orphan*/  dma_map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int BCM_DMA_CH_MAX ; 
 int BCM_DMA_CH_USED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  CS_ACTIVE ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm_dma_cb*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct bcm_dma_softc* bcm_dma_sc ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(int ch, vm_paddr_t src, vm_paddr_t dst, int len)
{
	struct bcm_dma_softc *sc = bcm_dma_sc;
	struct bcm_dma_cb *cb;

	if (ch < 0 || ch >= BCM_DMA_CH_MAX)
		return (-1);

	if (!(sc->sc_dma_ch[ch].flags & BCM_DMA_CH_USED))
		return (-1);

	cb = sc->sc_dma_ch[ch].cb;
	if (FUNC0(src))
		cb->src = FUNC3(src);
	else
		cb->src = FUNC4(src);
	if (FUNC0(dst))
		cb->dst = FUNC3(dst);
	else
		cb->dst = FUNC4(dst);
	cb->len = len;

	FUNC7(sc->sc_dma_tag,
	    sc->sc_dma_ch[ch].dma_map, BUS_DMASYNC_PREWRITE);

	FUNC8(sc->sc_mem, FUNC1(ch),
	    sc->sc_dma_ch[ch].vc_cb);
	FUNC8(sc->sc_mem, FUNC2(ch), CS_ACTIVE);

#ifdef DEBUG
	bcm_dma_cb_dump(sc->sc_dma_ch[ch].cb);
	bcm_dma_reg_dump(ch);
#endif

	return (0);
}