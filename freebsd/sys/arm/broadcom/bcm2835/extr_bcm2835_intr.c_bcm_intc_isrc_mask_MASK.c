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
struct bcm_intc_softc {int dummy; } ;
struct bcm_intc_irqsrc {int /*<<< orphan*/  bii_mask; int /*<<< orphan*/  bii_disable_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_intc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC1(struct bcm_intc_softc *sc, struct bcm_intc_irqsrc *bii)
{

	FUNC0(sc, bii->bii_disable_reg,  bii->bii_mask);
}