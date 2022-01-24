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
struct aac_softc {int /*<<< orphan*/  aac_io_lock; } ;
struct aac_event {int ev_type; } ;
struct aac_command {int dummy; } ;

/* Variables and functions */
#define  AAC_EVENT_CMFREE 128 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_AACBUF ; 
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,struct aac_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_softc*,struct aac_command**) ; 
 int /*<<< orphan*/  FUNC2 (struct aac_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static void
FUNC5(struct aac_softc *sc, struct aac_event *event, void *arg)
{

	switch (event->ev_type) {
	case AAC_EVENT_CMFREE:
		FUNC3(&sc->aac_io_lock, MA_OWNED);
		if (FUNC1(sc, (struct aac_command **)arg)) {
			FUNC0(sc, event);
			return;
		}
		FUNC2(event, M_AACBUF);
		FUNC4(arg);
		break;
	default:
		break;
	}
}