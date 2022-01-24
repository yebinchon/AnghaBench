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
struct fwohci_softc {scalar_t__ state; int* config_rom; scalar_t__ config_rom_buf; } ;

/* Variables and functions */
 int CROMSIZE ; 
 scalar_t__ FWOHCI_STATE_DEAD ; 
 scalar_t__ FWOHCI_STATE_ENABLED ; 
 scalar_t__ FWOHCI_STATE_INIT ; 
 int MAX_OHCI ; 
 int /*<<< orphan*/  FUNC0 (struct fwohci_softc*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ fw_initialized ; 
 struct fwohci_softc* fwinfo ; 
 scalar_t__ FUNC2 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int*) ; 

void
FUNC4(void)
{
	struct fwohci_softc *sc;
	int i;

	if (fw_initialized == 0)
		FUNC1();

	for (i = 0; i < MAX_OHCI; i ++) {
		sc = &fwinfo[i];
		if (sc->state != FWOHCI_STATE_INIT)
			break;

		sc->config_rom = (uint32_t *)
			(((uint32_t)sc->config_rom_buf
				+ (CROMSIZE - 1)) & ~(CROMSIZE - 1));
#if 0
		printf("configrom: %08p %08p\n",
			sc->config_rom_buf, sc->config_rom);
#endif
		if (FUNC2(sc, 0) == 0) {
			sc->state = FWOHCI_STATE_ENABLED;
			FUNC0(sc);
		} else
			sc->state = FWOHCI_STATE_DEAD;
	}
}