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
struct cpsw_softc {int /*<<< orphan*/  avail; struct cpsw_slot* _slots; } ;
struct cpsw_slot {int /*<<< orphan*/  bd_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct cpsw_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  next ; 
 int FUNC3 (struct cpsw_slot*) ; 

__attribute__((used)) static void
FUNC4(struct cpsw_softc *sc)
{
	struct cpsw_slot *slot;
	int i;

	FUNC0(&sc->avail);

	/* Put the slot descriptors onto the global avail list. */
	for (i = 0; i < FUNC3(sc->_slots); i++) {
		slot = &sc->_slots[i];
		slot->bd_offset = FUNC2(i);
		FUNC1(&sc->avail, slot, next);
	}
}