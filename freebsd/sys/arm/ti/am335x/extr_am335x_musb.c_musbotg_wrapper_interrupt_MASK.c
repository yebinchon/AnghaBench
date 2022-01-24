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
typedef  int uint32_t ;
struct musbotg_super_softc {int dummy; } ;
struct musbotg_softc {int /*<<< orphan*/  sc_id; struct musbotg_super_softc* sc_platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int IRQ_STAT1_DRVVBUS ; 
 int /*<<< orphan*/  USBCTRL_IRQ_STAT0 ; 
 int /*<<< orphan*/  USBCTRL_IRQ_STAT1 ; 
 int FUNC1 (struct musbotg_super_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USBCTRL_STAT ; 
 int /*<<< orphan*/  FUNC2 (struct musbotg_super_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct musbotg_softc*,int) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct musbotg_softc *sc = arg;
	struct musbotg_super_softc *ssc = sc->sc_platform_data;
	uint32_t stat, stat0, stat1;

	stat = FUNC1(ssc, USBCTRL_STAT);
	stat0 = FUNC1(ssc, USBCTRL_IRQ_STAT0);
	stat1 = FUNC1(ssc, USBCTRL_IRQ_STAT1);
	if (stat0)
		FUNC2(ssc, USBCTRL_IRQ_STAT0, stat0);
	if (stat1)
		FUNC2(ssc, USBCTRL_IRQ_STAT1, stat1);

	FUNC0(4, "port%d: stat0=%08x stat1=%08x, stat=%08x\n",
	    sc->sc_id, stat0, stat1, stat);

	if (stat1 & IRQ_STAT1_DRVVBUS)
		FUNC4(sc, stat & 1);

	FUNC3(arg, ((stat0 >> 16) & 0xffff),
	    stat0 & 0xffff, stat1 & 0xff);
}