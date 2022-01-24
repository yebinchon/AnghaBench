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
struct sc_pcminfo {int /*<<< orphan*/  dev; struct sc_info* sc; } ;
struct sc_info {int /*<<< orphan*/  lock; } ;
struct sc_chinfo {int run; struct sc_pcminfo* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
#define  PCMTRIG_ABORT 130 
#define  PCMTRIG_START 129 
#define  PCMTRIG_STOP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_pcminfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_pcminfo*) ; 

__attribute__((used)) static int
FUNC5(kobj_t obj, void *data, int go)
{
	struct sc_pcminfo *scp;
	struct sc_chinfo *ch;
	struct sc_info *sc;

	ch = data;
	scp = ch->parent;
	sc = scp->sc;

	FUNC1(sc->lock);

	switch (go) {
	case PCMTRIG_START:
#if 0
		device_printf(scp->dev, "trigger start\n");
#endif
		ch->run = 1;

		FUNC3(scp);

		break;

	case PCMTRIG_STOP:
	case PCMTRIG_ABORT:
#if 0
		device_printf(scp->dev, "trigger stop or abort\n");
#endif
		ch->run = 0;

		FUNC4(scp);

		break;
	}

	FUNC2(sc->lock);

	return (0);
}