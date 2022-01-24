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
struct ifnet {int /*<<< orphan*/  if_snd; } ;
struct fv_softc {int sc_inten; int sc_rxint_mask; int sc_txint_mask; int /*<<< orphan*/  fv_dev; struct ifnet* fv_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_FULLDUP ; 
 int FUNC0 (struct fv_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSR_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct fv_softc*,int /*<<< orphan*/ ,int) ; 
 int FULLDUP_CS ; 
 int FULLDUP_NRP_SHIFT ; 
 int FULLDUP_NTP_SHIFT ; 
 int FULLDUP_RT_SHIFT ; 
 int FULLDUP_TT_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct fv_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct fv_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int STATUS_AIS ; 
 int STATUS_UNF ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct fv_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (struct fv_softc*) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	struct fv_softc		*sc = arg;
	uint32_t		status;
	struct ifnet		*ifp = sc->fv_ifp;

	FUNC2(sc);

	status = FUNC0(sc, CSR_STATUS);
	/* mask out interrupts */
	while((status & sc->sc_inten) != 0) {
		if (status) {
			FUNC1(sc, CSR_STATUS, status);
		}
		if (status & STATUS_UNF) {
			FUNC5(sc->fv_dev, "Transmit Underflow\n");
		}
		if (status & sc->sc_rxint_mask) {
			FUNC6(sc);
		}
		if (status & sc->sc_txint_mask) {
			FUNC8(sc);
		}
		if (status & STATUS_AIS) {
			FUNC5(sc->fv_dev, "Abnormal Interrupt %x\n",
			    status);
		}
		FUNC1(sc, CSR_FULLDUP, FULLDUP_CS | 
		    (1 << FULLDUP_TT_SHIFT) | (3 << FULLDUP_NTP_SHIFT) | 
		    (2 << FULLDUP_RT_SHIFT) | (2 << FULLDUP_NRP_SHIFT));


		status = FUNC0(sc, CSR_STATUS);
	}

	/* Try to get more packets going. */
	if (!FUNC4(&ifp->if_snd))
		FUNC7(ifp);

	FUNC3(sc);
}