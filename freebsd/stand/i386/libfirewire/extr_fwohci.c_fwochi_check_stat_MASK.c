#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct fwohci_softc {TYPE_1__ fc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FWOHCI_INTSTAT ; 
 int /*<<< orphan*/  FWOHCI_INTSTATCLR ; 
 int FUNC0 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fwohci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static uint32_t
FUNC3(struct fwohci_softc *sc)
{
	uint32_t stat;

	stat = FUNC0(sc, FWOHCI_INTSTAT);
	if (stat == 0xffffffff) {
		FUNC2(sc->fc.dev, 
			"device physically ejected?\n");
		return(stat);
	}
	if (stat)
		FUNC1(sc, FWOHCI_INTSTATCLR, stat);
	return(stat);
}