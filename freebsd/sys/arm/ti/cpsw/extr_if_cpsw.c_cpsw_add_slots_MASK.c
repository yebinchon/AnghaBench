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
struct cpsw_softc {int /*<<< orphan*/  avail; int /*<<< orphan*/  dev; int /*<<< orphan*/  mbuf_dtag; int /*<<< orphan*/  _slots; } ;
struct cpsw_slot {int /*<<< orphan*/  dmamap; } ;
struct cpsw_queue {int /*<<< orphan*/  queue_slots; int /*<<< orphan*/  avail_queue_len; int /*<<< orphan*/  avail; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct cpsw_slot* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct cpsw_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  next ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct cpsw_softc *sc, struct cpsw_queue *queue, int requested)
{
	const int max_slots = FUNC5(sc->_slots);
	struct cpsw_slot *slot;
	int i;

	if (requested < 0)
		requested = max_slots;

	for (i = 0; i < requested; ++i) {
		slot = FUNC0(&sc->avail);
		if (slot == NULL)
			return (0);
		if (FUNC3(sc->mbuf_dtag, 0, &slot->dmamap)) {
			FUNC4(sc->dev, "failed to create dmamap\n");
			return (ENOMEM);
		}
		FUNC2(&sc->avail, next);
		FUNC1(&queue->avail, slot, next);
		++queue->avail_queue_len;
		++queue->queue_slots;
	}
	return (0);
}