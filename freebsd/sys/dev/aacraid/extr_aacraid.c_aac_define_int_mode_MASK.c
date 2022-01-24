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
struct aac_softc {int flags; int aac_max_msix; int aac_vector_cap; int aac_max_fibs; scalar_t__ aac_hwif; void* msi_enabled; void* msi_tupelo; int /*<<< orphan*/  aac_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AAC_ENABLE_MSIX ; 
 int AAC_FLAGS_SYNC_MODE ; 
 scalar_t__ AAC_HWIF_SRC ; 
 int AAC_MAX_MSIX ; 
 int AAC_PCI_MSI_ENABLE ; 
 void* FALSE ; 
 char* HBA_FLAGS_DBG_DEBUG_B ; 
 int /*<<< orphan*/  PCIY_MSIX ; 
 void* TRUE ; 
 int FUNC1 (struct aac_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct aac_softc*,char*,char*,void*,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct aac_softc *sc)
{
	device_t dev;
	int cap, msi_count, error = 0;
	uint32_t val;
	
	dev = sc->aac_dev;

	if (sc->flags & AAC_FLAGS_SYNC_MODE) {
		FUNC2(dev, "using line interrupts\n");
		sc->aac_max_msix = 1;
		sc->aac_vector_cap = sc->aac_max_fibs;
		return;
	}

	/* max. vectors from AAC_MONKER_GETCOMMPREF */
	if (sc->aac_max_msix == 0) {
		if (sc->aac_hwif == AAC_HWIF_SRC) {
			msi_count = 1;
			if ((error = FUNC4(dev, &msi_count)) != 0) {
				FUNC2(dev, "alloc msi failed - err=%d; "
				    "will use INTx\n", error);
				FUNC8(dev);
			} else {
				sc->msi_tupelo = TRUE;
			}
		}
		if (sc->msi_tupelo)
			FUNC2(dev, "using MSI interrupts\n");
		else
			FUNC2(dev, "using line interrupts\n");

		sc->aac_max_msix = 1;
		sc->aac_vector_cap = sc->aac_max_fibs;
		return;
	}

	/* OS capability */
	msi_count = FUNC6(dev);
	if (msi_count > AAC_MAX_MSIX)
		msi_count = AAC_MAX_MSIX;
	if (msi_count > sc->aac_max_msix)
		msi_count = sc->aac_max_msix;
	if (msi_count == 0 || (error = FUNC5(dev, &msi_count)) != 0) {
		FUNC2(dev, "alloc msix failed - msi_count=%d, err=%d; "
				   "will try MSI\n", msi_count, error);
		FUNC8(dev);
	} else {
		sc->msi_enabled = TRUE;
		FUNC2(dev, "using MSI-X interrupts (%u vectors)\n",
			msi_count);
	}

	if (!sc->msi_enabled) {
		msi_count = 1;
		if ((error = FUNC4(dev, &msi_count)) != 0) {
			FUNC2(dev, "alloc msi failed - err=%d; "
				           "will use INTx\n", error);
			FUNC8(dev);
		} else {
			sc->msi_enabled = TRUE;
			FUNC2(dev, "using MSI interrupts\n");
		}
	}

	if (sc->msi_enabled) {
		/* now read controller capability from PCI config. space */
		cap = FUNC1(sc, PCIY_MSIX);	
		val = (cap != 0 ? FUNC7(dev, cap + 2, 2) : 0);	
		if (!(val & AAC_PCI_MSI_ENABLE)) {
			FUNC8(dev);
			sc->msi_enabled = FALSE;
		}
	}

	if (!sc->msi_enabled) {
		FUNC2(dev, "using legacy interrupts\n");
		sc->aac_max_msix = 1;
	} else {
		FUNC0(sc, AAC_ENABLE_MSIX);
		if (sc->aac_max_msix > msi_count)
			sc->aac_max_msix = msi_count;
	}
	sc->aac_vector_cap = sc->aac_max_fibs / sc->aac_max_msix;

	FUNC3(sc, HBA_FLAGS_DBG_DEBUG_B, "msi_enabled %d vector_cap %d max_fibs %d max_msix %d",
		sc->msi_enabled,sc->aac_vector_cap, sc->aac_max_fibs, sc->aac_max_msix);
}