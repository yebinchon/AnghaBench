#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int teardown; scalar_t__ avail_queue_len; scalar_t__ max_avail_queue_len; scalar_t__ running; int /*<<< orphan*/  active; int /*<<< orphan*/  active_queue_len; int /*<<< orphan*/  queue_removes; int /*<<< orphan*/  queue_restart; int /*<<< orphan*/  avail; } ;
struct cpsw_softc {TYPE_1__ tx; int /*<<< orphan*/  mbuf_dtag; } ;
struct cpsw_slot {int /*<<< orphan*/ * mbuf; scalar_t__ ifp; int /*<<< orphan*/  dmamap; } ;
struct cpsw_cpdma_bd {scalar_t__ next; scalar_t__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 scalar_t__ CPDMA_BD_EOP ; 
 scalar_t__ CPDMA_BD_EOQ ; 
 scalar_t__ CPDMA_BD_OWNER ; 
 scalar_t__ CPDMA_BD_SOP ; 
 scalar_t__ CPDMA_BD_TDOWNCMPLT ; 
 int /*<<< orphan*/  FUNC0 (struct cpsw_softc*,char*) ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  IFCOUNTER_OQDROPS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct cpsw_slot* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct cpsw_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cpsw_softc*,struct cpsw_slot*,struct cpsw_cpdma_bd*) ; 
 scalar_t__ FUNC8 (struct cpsw_softc*,struct cpsw_slot*) ; 
 int /*<<< orphan*/  FUNC9 (struct cpsw_softc*,TYPE_1__*,struct cpsw_slot*) ; 
 int /*<<< orphan*/  FUNC10 (struct cpsw_softc*,TYPE_1__*,struct cpsw_slot*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static int
FUNC13(struct cpsw_softc *sc)
{
	struct cpsw_slot *slot, *last_removed_slot = NULL;
	struct cpsw_cpdma_bd bd;
	uint32_t flags, removed = 0;

	/* Pull completed buffers off the hardware TX queue. */
	slot = FUNC2(&sc->tx.active);
	while (slot != NULL) {
		flags = FUNC8(sc, slot);

		/* TearDown complete is only marked on the SOP for the packet. */
		if ((flags & (CPDMA_BD_SOP | CPDMA_BD_TDOWNCMPLT)) ==
		    (CPDMA_BD_SOP | CPDMA_BD_TDOWNCMPLT)) {
			sc->tx.teardown = 1;
		}

		if ((flags & (CPDMA_BD_SOP | CPDMA_BD_OWNER)) ==
		    (CPDMA_BD_SOP | CPDMA_BD_OWNER) && sc->tx.teardown == 0)
			break; /* Hardware is still using this packet. */

		FUNC5(sc->mbuf_dtag, slot->dmamap, BUS_DMASYNC_POSTWRITE);
		FUNC6(sc->mbuf_dtag, slot->dmamap);
		FUNC12(slot->mbuf);
		slot->mbuf = NULL;

		if (slot->ifp) {
			if (sc->tx.teardown == 0)
				FUNC11(slot->ifp, IFCOUNTER_OPACKETS, 1);
			else
				FUNC11(slot->ifp, IFCOUNTER_OQDROPS, 1);
		}

		/* Dequeue any additional buffers used by this packet. */
		while (slot != NULL && slot->mbuf == NULL) {
			FUNC4(&sc->tx.active, next);
			FUNC3(&sc->tx.avail, slot, next);
			++removed;
			last_removed_slot = slot;
			slot = FUNC2(&sc->tx.active);
		}

		FUNC9(sc, &sc->tx, last_removed_slot);

		/* Restart the TX queue if necessary. */
		FUNC7(sc, last_removed_slot, &bd);
		if (slot != NULL && bd.next != 0 && (bd.flags &
		    (CPDMA_BD_EOP | CPDMA_BD_OWNER | CPDMA_BD_EOQ)) ==
		    (CPDMA_BD_EOP | CPDMA_BD_EOQ)) {
			FUNC10(sc, &sc->tx, slot);
			sc->tx.queue_restart++;
			break;
		}
	}

	if (removed != 0) {
		sc->tx.queue_removes += removed;
		sc->tx.active_queue_len -= removed;
		sc->tx.avail_queue_len += removed;
		if (sc->tx.avail_queue_len > sc->tx.max_avail_queue_len)
			sc->tx.max_avail_queue_len = sc->tx.avail_queue_len;
		FUNC0(sc, ("TX removed %d completed packet(s)", removed));
	}

	if (sc->tx.teardown && FUNC1(&sc->tx.active)) {
		FUNC0(sc, ("TX teardown is complete"));
		sc->tx.teardown = 0;
		sc->tx.running = 0;
	}

	return (removed);
}