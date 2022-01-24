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
struct ccp_softc {unsigned int intr_count; int /*<<< orphan*/  dev; int /*<<< orphan*/ ** intr_res; int /*<<< orphan*/ ** intr_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct ccp_softc *sc)
{
	unsigned i;

	for (i = 0; i < sc->intr_count; i++) {
		if (sc->intr_tag[i] != NULL)
			FUNC1(sc->dev, sc->intr_res[i],
			    sc->intr_tag[i]);
		if (sc->intr_res[i] != NULL)
			FUNC0(sc->dev, SYS_RES_IRQ,
			    FUNC3(sc->intr_res[i]), sc->intr_res[i]);
	}

	FUNC2(sc->dev);
}