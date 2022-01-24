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
typedef  size_t u_int ;
struct trapframe {int dummy; } ;
struct bcm_lintc_softc {int /*<<< orphan*/  bls_dev; struct bcm_lintc_irqsrc* bls_isrcs; } ;
struct bcm_lintc_irqsrc {int /*<<< orphan*/  bli_isrc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct trapframe*) ; 

__attribute__((used)) static inline void
FUNC2(struct bcm_lintc_softc *sc, u_int irq,
    struct trapframe *tf)
{
	struct bcm_lintc_irqsrc *bli;

	bli = &sc->bls_isrcs[irq];
	if (FUNC1(&bli->bli_isrc, tf) != 0)
		FUNC0(sc->bls_dev, "Stray irq %u detected\n", irq);
}