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
struct ccp_softc {int valid_queues; int /*<<< orphan*/  queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_Q_INT_ENABLE_BASE ; 
 int FILTER_SCHEDULE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (struct ccp_softc*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(void *arg)
{
	struct ccp_softc *sc = arg;
	size_t i;

	/* TODO: Split individual queues into separate taskqueues? */
	for (i = 0; i < FUNC1(sc->queues); i++) {
		if ((sc->valid_queues & (1 << i)) == 0)
			continue;

		/* Mask interrupt until task completes */
		FUNC0(sc, i, CMD_Q_INT_ENABLE_BASE, 0);
	}

	return (FILTER_SCHEDULE_THREAD);
}