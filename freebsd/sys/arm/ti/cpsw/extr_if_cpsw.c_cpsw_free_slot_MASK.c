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
struct cpsw_softc {int /*<<< orphan*/  mbuf_dtag; } ;
struct cpsw_slot {int /*<<< orphan*/ * mbuf; int /*<<< orphan*/ * dmamap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct cpsw_softc *sc, struct cpsw_slot *slot)
{
	int error;

	if (slot->dmamap) {
		if (slot->mbuf)
			FUNC2(sc->mbuf_dtag, slot->dmamap);
		error = FUNC1(sc->mbuf_dtag, slot->dmamap);
		FUNC0(error == 0, ("Mapping still active"));
		slot->dmamap = NULL;
	}
	if (slot->mbuf) {
		FUNC3(slot->mbuf);
		slot->mbuf = NULL;
	}
}