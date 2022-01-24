#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  isrc; } ;
struct aw_nmi_softc {int /*<<< orphan*/  dev; TYPE_2__* cfg; TYPE_1__ intr; } ;
struct TYPE_6__ {int /*<<< orphan*/  td_intr_frame; } ;
struct TYPE_5__ {int /*<<< orphan*/  enable_reg; int /*<<< orphan*/  pending_reg; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  NMI_IRQ_ENABLE ; 
 scalar_t__ FUNC0 (struct aw_nmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aw_nmi_softc*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* curthread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(void *arg)
{
	struct aw_nmi_softc *sc;

	sc = arg;

	if (FUNC0(sc, sc->cfg->pending_reg) == 0) {
		FUNC2(sc->dev, "Spurious interrupt\n");
		return (FILTER_HANDLED);
	}

	if (FUNC3(&sc->intr.isrc, curthread->td_intr_frame) != 0) {
		FUNC1(sc, sc->cfg->enable_reg, !NMI_IRQ_ENABLE);
		FUNC2(sc->dev, "Stray interrupt, NMI disabled\n");
	}

	return (FILTER_HANDLED);
}