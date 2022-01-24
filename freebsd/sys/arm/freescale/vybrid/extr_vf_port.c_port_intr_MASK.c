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
struct port_softc {int dummy; } ;
struct port_event {int enabled; int /*<<< orphan*/  ih_user; int /*<<< orphan*/  (* ih ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int NGPIO ; 
 int PCR_ISF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct port_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct port_softc*,int /*<<< orphan*/ ,int) ; 
 struct port_event* event_map ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(void *arg)
{
	struct port_event *pev;
	struct port_softc *sc;
	int reg;
	int i;

	sc = arg;

	for (i = 0; i < NGPIO; i++) {
		reg = FUNC1(sc, FUNC0(i));
		if (reg & PCR_ISF) {

			/* Clear interrupt */
			FUNC2(sc, FUNC0(i), reg);

			/* Handle event */
			pev = &event_map[i];
			if (pev->enabled == 1) {
				if (pev->ih != NULL) {
					pev->ih(pev->ih_user);
				}
			}
		}
	}

	return (FILTER_HANDLED);
}