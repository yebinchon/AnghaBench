#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource_list_entry {int /*<<< orphan*/  start; } ;
struct pci_driver {int (* probe ) (struct pci_dev*,struct pci_device_id const*) ;scalar_t__ isdrm; } ;
struct TYPE_4__ {int /*<<< orphan*/  subdevice; int /*<<< orphan*/  subvendor; int /*<<< orphan*/  vendor; int /*<<< orphan*/  device; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
struct pci_device_id {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  kobj; int /*<<< orphan*/  irqents; int /*<<< orphan*/  bsddev; TYPE_3__* parent; } ;
struct pci_dev {TYPE_2__ dev; int /*<<< orphan*/  links; struct pci_bus* bus; int /*<<< orphan*/  irq; struct pci_driver* pdrv; int /*<<< orphan*/  revision; int /*<<< orphan*/  class; int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; int /*<<< orphan*/  vendor; int /*<<< orphan*/  device; int /*<<< orphan*/  devfn; } ;
struct pci_bus {int /*<<< orphan*/  domain; int /*<<< orphan*/  number; struct pci_dev* self; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LINUX_IRQ_INVALID ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  curthread ; 
 struct pci_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct pci_devinfo*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  linux_dev_ktype ; 
 struct pci_driver* FUNC12 (int /*<<< orphan*/ ,struct pci_device_id const**) ; 
 struct resource_list_entry* FUNC13 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 TYPE_3__ linux_root_device ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 struct pci_bus* FUNC19 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pci_devices ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_lock ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int FUNC29 (struct pci_dev*,struct pci_device_id const*) ; 

__attribute__((used)) static int
FUNC30(device_t dev)
{
	struct resource_list_entry *rle;
	struct pci_bus *pbus;
	struct pci_dev *pdev;
	struct pci_devinfo *dinfo;
	struct pci_driver *pdrv;
	const struct pci_device_id *id;
	device_t parent;
	int error;

	FUNC16(curthread);

	pdrv = FUNC12(dev, &id);
	pdev = FUNC5(dev);

	parent = FUNC4(dev);
	if (pdrv->isdrm) {
		dinfo = FUNC2(parent);
		FUNC6(dev, dinfo);
	} else {
		dinfo = FUNC2(dev);
	}

	pdev->dev.parent = &linux_root_device;
	pdev->dev.bsddev = dev;
	FUNC0(&pdev->dev.irqents);
	pdev->devfn = FUNC1(FUNC25(dev), FUNC23(dev));
	pdev->device = dinfo->cfg.device;
	pdev->vendor = dinfo->cfg.vendor;
	pdev->subsystem_vendor = dinfo->cfg.subvendor;
	pdev->subsystem_device = dinfo->cfg.subdevice;
	pdev->class = FUNC21(dev);
	pdev->revision = FUNC24(dev);
	pdev->pdrv = pdrv;
	FUNC9(&pdev->dev.kobj, &linux_dev_ktype);
	FUNC11(&pdev->dev.kobj, FUNC3(dev));
	FUNC8(&pdev->dev.kobj, &linux_root_device.kobj,
	    FUNC10(&pdev->dev.kobj));
	rle = FUNC13(pdev, SYS_RES_IRQ, 0);
	if (rle != NULL)
		pdev->dev.irq = rle->start;
	else
		pdev->dev.irq = LINUX_IRQ_INVALID;
	pdev->irq = pdev->dev.irq;
	error = FUNC14(pdev);
	if (error)
		goto out_dma_init;

	pbus = FUNC19(sizeof(*pbus), M_DEVBUF, M_WAITOK | M_ZERO);
	pbus->self = pdev;
	pbus->number = FUNC20(dev);
	pbus->domain = FUNC22(dev);
	pdev->bus = pbus;

	FUNC27(&pci_lock);
	FUNC17(&pdev->links, &pci_devices);
	FUNC28(&pci_lock);

	error = pdrv->probe(pdev, id);
	if (error)
		goto out_probe;
	return (0);

out_probe:
	FUNC7(pdev->bus, M_DEVBUF);
	FUNC15(pdev);
out_dma_init:
	FUNC27(&pci_lock);
	FUNC18(&pdev->links);
	FUNC28(&pci_lock);
	FUNC26(&pdev->dev);
	return (-error);
}