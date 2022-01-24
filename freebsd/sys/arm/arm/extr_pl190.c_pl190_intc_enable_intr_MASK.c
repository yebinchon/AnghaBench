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
struct pl190_intc_softc {int dummy; } ;
struct pl190_intc_irqsrc {int irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pl190_intc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VICINTENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct pl190_intc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct pl190_intc_softc*) ; 
 struct pl190_intc_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t dev, struct intr_irqsrc *isrc)
{
	struct pl190_intc_softc *sc;
	struct pl190_intc_irqsrc *src;

	sc = FUNC3(dev);
	src = (struct pl190_intc_irqsrc *)isrc;

	FUNC1(sc);
	FUNC0(sc, VICINTENABLE, (1 << src->irq));
	FUNC2(sc);
}