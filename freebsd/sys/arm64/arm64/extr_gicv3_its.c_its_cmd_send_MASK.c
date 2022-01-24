#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct its_col {scalar_t__ col_target; } ;
struct TYPE_2__ {struct its_col* col; } ;
struct its_cmd_desc {TYPE_1__ cmd_desc_sync; int /*<<< orphan*/  cmd_type; } ;
struct its_cmd {int dummy; } ;
struct gicv3_its_softc {int sc_its_cmd_next_idx; int /*<<< orphan*/  sc_its_cmd_lock; struct its_cmd* sc_its_cmd_base; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  GITS_CWRITER ; 
 int /*<<< orphan*/  ITS_CMD_SYNC ; 
 scalar_t__ ITS_TARGET_NONE ; 
 struct gicv3_its_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gicv3_its_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct its_cmd* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct its_cmd*,struct its_cmd_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct gicv3_its_softc*,struct its_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct its_cmd*,struct its_cmd*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(device_t dev, struct its_cmd_desc *desc)
{
	struct gicv3_its_softc *sc;
	struct its_cmd *cmd, *cmd_sync, *cmd_write;
	struct its_col col_sync;
	struct its_cmd_desc desc_sync;
	uint64_t target, cwriter;

	sc = FUNC0(dev);
	FUNC7(&sc->sc_its_cmd_lock);
	cmd = FUNC3(dev);
	if (cmd == NULL) {
		FUNC1(dev, "could not allocate ITS command\n");
		FUNC8(&sc->sc_its_cmd_lock);
		return (EBUSY);
	}

	target = FUNC4(cmd, desc);
	FUNC5(sc, cmd);

	if (target != ITS_TARGET_NONE) {
		cmd_sync = FUNC3(dev);
		if (cmd_sync != NULL) {
			desc_sync.cmd_type = ITS_CMD_SYNC;
			col_sync.col_target = target;
			desc_sync.cmd_desc_sync.col = &col_sync;
			FUNC4(cmd_sync, &desc_sync);
			FUNC5(sc, cmd_sync);
		}
	}

	/* Update GITS_CWRITER */
	cwriter = sc->sc_its_cmd_next_idx * sizeof(struct its_cmd);
	FUNC2(sc, GITS_CWRITER, cwriter);
	cmd_write = &sc->sc_its_cmd_base[sc->sc_its_cmd_next_idx];
	FUNC8(&sc->sc_its_cmd_lock);

	FUNC6(dev, cmd, cmd_write);

	return (0);
}