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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct amdvi_softc {int event_irq; struct amdvi_ctrl* ctrl; int /*<<< orphan*/  dev; int /*<<< orphan*/  event_tag; int /*<<< orphan*/ * event_res; scalar_t__ event_rid; int /*<<< orphan*/  pci_rid; } ;
struct amdvi_ctrl {int status; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int name; } ;

/* Variables and functions */
 int AMDVI_STATUS_EV_INTR ; 
 int AMDVI_STATUS_EV_OF ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  amdvi_event_intr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct amdvi_softc*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC17(struct amdvi_softc *softc)
{
	struct amdvi_ctrl *ctrl;
	device_t dev, pcib;
	device_t mmio_dev;
	uint64_t msi_addr;
	uint32_t msi_data;
	int err;

	dev = softc->dev;
	pcib = FUNC12(FUNC12(dev));
	mmio_dev = FUNC16(FUNC2(softc->pci_rid),
            FUNC4(softc->pci_rid), FUNC3(softc->pci_rid));
	if (FUNC13(mmio_dev)) {
		FUNC14(dev,
		    "warning: IOMMU device is claimed by another driver %s\n",
		    FUNC11(mmio_dev)->name);
	}

	softc->event_irq = -1;
	softc->event_rid = 0;

	/*
	 * Section 3.7.1 of IOMMU rev 2.0. With MSI, there is only one
	 * interrupt. XXX: Enable MSI/X support.
	 */
	err = FUNC0(pcib, dev, 1, 1, &softc->event_irq);
	if (err) {
		FUNC14(dev,
		    "Couldn't find event MSI IRQ resource.\n");
		return (ENOENT);
	}

	err = FUNC9(dev, SYS_RES_IRQ, softc->event_rid,
	    softc->event_irq, 1);
	if (err) {
		FUNC14(dev, "Couldn't set event MSI resource.\n");
		return (ENXIO);
	}

	softc->event_res = FUNC6(dev, SYS_RES_IRQ,
	    &softc->event_rid, RF_ACTIVE);
	if (!softc->event_res) {
		FUNC14(dev,
		    "Unable to allocate event INTR resource.\n");
		return (ENOMEM);
	}

	if (FUNC10(dev, softc->event_res,
	    INTR_TYPE_MISC | INTR_MPSAFE, NULL, amdvi_event_intr,
	    softc, &softc->event_tag)) {
		FUNC14(dev, "Fail to setup event intr\n");
		FUNC8(softc->dev, SYS_RES_IRQ,
		    softc->event_rid, softc->event_res);
		softc->event_res = NULL;
		return (ENXIO);
	}

	FUNC7(dev, softc->event_res, softc->event_tag,
	    "fault");

	err = FUNC1(pcib, dev, softc->event_irq, &msi_addr,
	    &msi_data);
	if (err) {
		FUNC14(dev,
		    "Event interrupt config failed, err=%d.\n",
		    err);
		FUNC5(softc->dev);
		return (err);
	}

	/* Clear interrupt status bits. */
	ctrl = softc->ctrl;
	ctrl->status &= AMDVI_STATUS_EV_OF | AMDVI_STATUS_EV_INTR;

	/* Now enable MSI interrupt. */
	FUNC15(mmio_dev, msi_addr, msi_data);
	return (0);
}