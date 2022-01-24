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
struct ti_wdt_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct ti_wdt_softc*) ; 
 int /*<<< orphan*/  TI_WDT_WSPR ; 
 int /*<<< orphan*/  TI_W_PEND_WSPR ; 
 int /*<<< orphan*/  FUNC1 (struct ti_wdt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_wdt_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __inline void
FUNC3(struct ti_wdt_softc *sc)
{

	FUNC0("disabling watchdog %p\n", sc);
	FUNC2(sc, TI_WDT_WSPR, 0xAAAA);
	FUNC1(sc, TI_W_PEND_WSPR);
	FUNC2(sc, TI_WDT_WSPR, 0x5555);
	FUNC1(sc, TI_W_PEND_WSPR);
}