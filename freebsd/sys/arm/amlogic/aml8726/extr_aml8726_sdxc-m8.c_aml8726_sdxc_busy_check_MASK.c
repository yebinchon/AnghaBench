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
struct TYPE_2__ {scalar_t__ time; scalar_t__ error; } ;
struct aml8726_sdxc_softc {TYPE_1__ busy; int /*<<< orphan*/  ch; } ;

/* Variables and functions */
 scalar_t__ AML_SDXC_BUSY_POLL_INTVL ; 
 scalar_t__ AML_SDXC_BUSY_TIMEOUT ; 
 int AML_SDXC_STATUS_DAT0 ; 
 int /*<<< orphan*/  AML_SDXC_STATUS_REG ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_sdxc_softc*) ; 
 int FUNC1 (struct aml8726_sdxc_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ MMC_ERR_NONE ; 
 scalar_t__ MMC_ERR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct aml8726_sdxc_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct aml8726_sdxc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct aml8726_sdxc_softc *sc = (struct aml8726_sdxc_softc *)arg;
	uint32_t sr;

	sc->busy.time += AML_SDXC_BUSY_POLL_INTVL;

	sr = FUNC1(sc, AML_SDXC_STATUS_REG);

	if ((sr & AML_SDXC_STATUS_DAT0) == 0) {
		if (sc->busy.time < AML_SDXC_BUSY_TIMEOUT) {
			FUNC3(&sc->ch,
			    FUNC4(AML_SDXC_BUSY_POLL_INTVL),
			    aml8726_sdxc_busy_check, sc);
			FUNC0(sc);
			return;
		}
		if (sc->busy.error == MMC_ERR_NONE)
			sc->busy.error = MMC_ERR_TIMEOUT;
	}

	FUNC2(sc, sc->busy.error);
}