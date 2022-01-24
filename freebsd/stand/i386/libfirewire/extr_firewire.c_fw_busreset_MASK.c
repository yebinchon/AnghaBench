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
struct fwohci_softc {scalar_t__ state; } ;

/* Variables and functions */
 int CMD_OK ; 
 scalar_t__ FWOHCI_STATE_ENABLED ; 
 scalar_t__ FWOHCI_STATE_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct fwohci_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct fwohci_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct fwohci_softc*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int
FUNC4(struct fwohci_softc *sc)
{
	int count;

	if (sc->state < FWOHCI_STATE_ENABLED) {
		FUNC3("fwohci not enabled\n");
		return(CMD_OK);
	}
	FUNC0(sc);
	FUNC1(sc);
	count = 0;
	while (sc->state< FWOHCI_STATE_NORMAL) {
		FUNC2(sc);
		count ++;
		if (count > 1000) {
			FUNC3("give up to wait bus initialize\n");
			return (-1);
		}
	}
	FUNC3("poll count = %d\n", count);
	return (0);
}