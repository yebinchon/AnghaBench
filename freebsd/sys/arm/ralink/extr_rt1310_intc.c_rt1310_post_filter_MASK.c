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
typedef  int u_int ;
struct rt1310_irqsrc {int ri_irq; } ;
struct rt1310_intc_softc {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  RT_INTC_ICCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct rt1310_intc_softc* intc_softc ; 
 int /*<<< orphan*/  FUNC1 (struct rt1310_intc_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(device_t dev, struct intr_irqsrc *isrc)
{
	u_int irq;
	struct rt1310_intc_softc *sc;

	FUNC0(0);
	sc = intc_softc;
	irq = ((struct rt1310_irqsrc *)isrc)->ri_irq;
	
   	FUNC1(sc, RT_INTC_ICCR, 1 << irq);
}