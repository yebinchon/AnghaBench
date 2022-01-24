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
typedef  int uint32_t ;
typedef  int u_int ;
struct TYPE_7__ {int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct TYPE_10__ {int cur; scalar_t__ queued; scalar_t__ segs; TYPE_3__* desc_ring; TYPE_2__* buf_map; int /*<<< orphan*/  buf_tag; } ;
struct awg_softc {TYPE_4__ tx; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;
struct TYPE_11__ {int ds_len; scalar_t__ ds_addr; } ;
typedef  TYPE_5__ bus_dma_segment_t ;
struct TYPE_9__ {void* status; void* size; void* addr; } ;
struct TYPE_8__ {struct mbuf* mbuf; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int CSUM_IP ; 
 int CSUM_TCP ; 
 int CSUM_UDP ; 
 int EFBIG ; 
 int EIO ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int TX_CHECKSUM_CTL_FULL ; 
 int TX_CHECKSUM_CTL_IP ; 
 int TX_CHECKSUM_CTL_SHIFT ; 
 scalar_t__ TX_DESC_COUNT ; 
 int TX_DESC_CTL ; 
 int TX_FIR_DESC ; 
 int TX_INT_CTL ; 
 int TX_LAST_DESC ; 
 int TX_MAX_SEGS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,scalar_t__) ; 
 scalar_t__ awg_tx_interval ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*,TYPE_5__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC6 (int) ; 
 struct mbuf* FUNC7 (struct mbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*) ; 

__attribute__((used)) static int
FUNC9(struct awg_softc *sc, struct mbuf **mp)
{
	bus_dmamap_t map;
	bus_dma_segment_t segs[TX_MAX_SEGS];
	int error, nsegs, cur, first, last, i;
	u_int csum_flags;
	uint32_t flags, status;
	struct mbuf *m;

	cur = first = sc->tx.cur;
	map = sc->tx.buf_map[first].map;

	m = *mp;
	error = FUNC2(sc->tx.buf_tag, map, m, segs,
	    &nsegs, BUS_DMA_NOWAIT);
	if (error == EFBIG) {
		m = FUNC7(m, M_NOWAIT, TX_MAX_SEGS);
		if (m == NULL) {
			FUNC5(sc->dev, "awg_encap: m_collapse failed\n");
			FUNC8(*mp);
			*mp = NULL;
			return (ENOMEM);
		}
		*mp = m;
		error = FUNC2(sc->tx.buf_tag, map, m,
		    segs, &nsegs, BUS_DMA_NOWAIT);
		if (error != 0) {
			FUNC8(*mp);
			*mp = NULL;
		}
	}
	if (error != 0) {
		FUNC5(sc->dev, "awg_encap: bus_dmamap_load_mbuf_sg failed\n");
		return (error);
	}
	if (nsegs == 0) {
		FUNC8(*mp);
		*mp = NULL;
		return (EIO);
	}

	if (sc->tx.queued + nsegs > TX_DESC_COUNT) {
		FUNC4(sc->tx.buf_tag, map);
		return (ENOBUFS);
	}

	FUNC3(sc->tx.buf_tag, map, BUS_DMASYNC_PREWRITE);

	flags = TX_FIR_DESC;
	status = 0;
	if ((m->m_pkthdr.csum_flags & CSUM_IP) != 0) {
		if ((m->m_pkthdr.csum_flags & (CSUM_TCP|CSUM_UDP)) != 0)
			csum_flags = TX_CHECKSUM_CTL_FULL;
		else
			csum_flags = TX_CHECKSUM_CTL_IP;
		flags |= (csum_flags << TX_CHECKSUM_CTL_SHIFT);
	}

	for (i = 0; i < nsegs; i++) {
		sc->tx.segs++;
		if (i == nsegs - 1) {
			flags |= TX_LAST_DESC;
			/*
			 * Can only request TX completion
			 * interrupt on last descriptor.
			 */
			if (sc->tx.segs >= awg_tx_interval) {
				sc->tx.segs = 0;
				flags |= TX_INT_CTL;
			}
		}

		sc->tx.desc_ring[cur].addr = FUNC6((uint32_t)segs[i].ds_addr);
		sc->tx.desc_ring[cur].size = FUNC6(flags | segs[i].ds_len);
		sc->tx.desc_ring[cur].status = FUNC6(status);

		flags &= ~TX_FIR_DESC;
		/*
		 * Setting of the valid bit in the first descriptor is
		 * deferred until the whole chain is fully set up.
		 */
		status = TX_DESC_CTL;

		++sc->tx.queued;
		cur = FUNC0(cur);
	}

	sc->tx.cur = cur;

	/* Store mapping and mbuf in the last segment */
	last = FUNC1(cur, TX_DESC_COUNT - 1);
	sc->tx.buf_map[first].map = sc->tx.buf_map[last].map;
	sc->tx.buf_map[last].map = map;
	sc->tx.buf_map[last].mbuf = m;

	/*
	 * The whole mbuf chain has been DMA mapped,
	 * fix the first descriptor.
	 */
	sc->tx.desc_ring[first].status = FUNC6(TX_DESC_CTL);

	return (0);
}