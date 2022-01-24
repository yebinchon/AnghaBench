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
typedef  size_t uint32_t ;
struct a31dmac_softc {int dummy; } ;
struct a31dmac_channel {int /*<<< orphan*/  index; scalar_t__ physaddr; TYPE_1__* desc; struct a31dmac_softc* sc; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ bus_addr_t ;
struct TYPE_2__ {void* next; void* bcnt; void* dstaddr; void* srcaddr; } ;

/* Variables and functions */
 size_t DMA_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t DMA_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct a31dmac_softc*,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC3 (size_t) ; 

__attribute__((used)) static int
FUNC4(device_t dev, void *priv, bus_addr_t src, bus_addr_t dst,
    size_t nbytes)
{
	struct a31dmac_channel *ch;
	struct a31dmac_softc *sc;

	ch = priv;
	sc = ch->sc;

	ch->desc->srcaddr = FUNC3((uint32_t)src);
	ch->desc->dstaddr = FUNC3((uint32_t)dst);
	ch->desc->bcnt = FUNC3(nbytes);
	ch->desc->next = FUNC3(DMA_NULL);

	FUNC2(sc, FUNC1(ch->index), (uint32_t)ch->physaddr);
	FUNC2(sc, FUNC0(ch->index), DMA_EN);

	return (0);
}