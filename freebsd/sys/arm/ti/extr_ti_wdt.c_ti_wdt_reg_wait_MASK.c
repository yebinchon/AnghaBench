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
struct ti_wdt_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TI_WDT_WWPS ; 
 int FUNC1 (struct ti_wdt_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC2(struct ti_wdt_softc *sc, uint32_t bit)
{

	while (FUNC1(sc, TI_WDT_WWPS) & bit)
		FUNC0(10);
}