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
struct versatile_sic_softc {int dummy; } ;
struct versatile_sic_irqsrc {int irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIC_ENSET ; 
 int /*<<< orphan*/  FUNC0 (struct versatile_sic_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct versatile_sic_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct versatile_sic_softc*,int /*<<< orphan*/ ,int) ; 
 struct versatile_sic_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t dev, struct intr_irqsrc *isrc)
{
	struct versatile_sic_softc *sc;
	struct versatile_sic_irqsrc *src;

	sc = FUNC3(dev);
	src = (struct versatile_sic_irqsrc *)isrc;

	FUNC0(sc);
	FUNC2(sc, SIC_ENSET, (1 << src->irq));
	FUNC1(sc);
}