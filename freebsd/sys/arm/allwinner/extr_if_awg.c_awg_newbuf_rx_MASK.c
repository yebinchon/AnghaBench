#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ext_size; } ;
struct TYPE_7__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_2__ m_ext; int /*<<< orphan*/  m_len; TYPE_1__ m_pkthdr; } ;
struct TYPE_10__ {TYPE_3__* buf_map; int /*<<< orphan*/  buf_tag; int /*<<< orphan*/  buf_spare_map; } ;
struct awg_softc {TYPE_4__ rx; } ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;
struct TYPE_11__ {int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_5__ bus_dma_segment_t ;
struct TYPE_9__ {struct mbuf* mbuf; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  ETHER_ALIGN ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int /*<<< orphan*/  FUNC0 (struct awg_softc*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*,TYPE_5__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 struct mbuf* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct awg_softc *sc, int index)
{
	struct mbuf *m;
	bus_dma_segment_t seg;
	bus_dmamap_t map;
	int nsegs;

	m = FUNC6(M_NOWAIT, MT_DATA, M_PKTHDR);
	if (m == NULL)
		return (ENOBUFS);

	m->m_pkthdr.len = m->m_len = m->m_ext.ext_size;
	FUNC4(m, ETHER_ALIGN);

	if (FUNC1(sc->rx.buf_tag, sc->rx.buf_spare_map,
	    m, &seg, &nsegs, BUS_DMA_NOWAIT) != 0) {
		FUNC5(m);
		return (ENOBUFS);
	}

	if (sc->rx.buf_map[index].mbuf != NULL) {
		FUNC2(sc->rx.buf_tag, sc->rx.buf_map[index].map,
		    BUS_DMASYNC_POSTREAD);
		FUNC3(sc->rx.buf_tag, sc->rx.buf_map[index].map);
	}
	map = sc->rx.buf_map[index].map;
	sc->rx.buf_map[index].map = sc->rx.buf_spare_map;
	sc->rx.buf_spare_map = map;
	FUNC2(sc->rx.buf_tag, sc->rx.buf_map[index].map,
	    BUS_DMASYNC_PREREAD);

	sc->rx.buf_map[index].mbuf = m;
	FUNC0(sc, index, seg.ds_addr);

	return (0);
}