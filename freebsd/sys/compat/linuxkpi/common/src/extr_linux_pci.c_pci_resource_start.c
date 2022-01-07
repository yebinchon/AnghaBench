
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
struct resource_list_entry {scalar_t__ start; int type; } ;
struct TYPE_3__ {int bsddev; } ;
struct pci_dev {TYPE_1__ dev; int devfn; TYPE_2__* bus; } ;
typedef unsigned long rman_res_t ;
typedef int * device_t ;
struct TYPE_4__ {int number; int domain; } ;


 scalar_t__ BUS_TRANSLATE_RESOURCE (int *,int ,scalar_t__,unsigned long*) ;
 int MPASS (int ) ;
 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 int device_printf (int ,char*,int ) ;
 struct resource_list_entry* linux_pci_get_bar (struct pci_dev*,int) ;
 int * pci_find_dbsf (int ,int ,int ,int ) ;

unsigned long
pci_resource_start(struct pci_dev *pdev, int bar)
{
 struct resource_list_entry *rle;
 rman_res_t newstart;
 device_t dev;

 if ((rle = linux_pci_get_bar(pdev, bar)) == ((void*)0))
  return (0);
 dev = pci_find_dbsf(pdev->bus->domain, pdev->bus->number,
     PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
 MPASS(dev != ((void*)0));
 if (BUS_TRANSLATE_RESOURCE(dev, rle->type, rle->start, &newstart)) {
  device_printf(pdev->dev.bsddev, "translate of %#jx failed\n",
      (uintmax_t)rle->start);
  return (0);
 }
 return (newstart);
}
