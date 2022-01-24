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
typedef  int /*<<< orphan*/  u_int ;
struct intr_irqsrc {int dummy; } ;
struct a10_intr_irqsrc {int /*<<< orphan*/  irq; } ;
struct a10_aintc_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct a10_aintc_softc*,int /*<<< orphan*/ ) ; 
 struct a10_aintc_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(device_t dev, struct intr_irqsrc *isrc)
{
	struct a10_aintc_softc *sc = FUNC1(dev);
	u_int irq = ((struct a10_intr_irqsrc *)isrc)->irq;

	FUNC0(sc, irq);
}