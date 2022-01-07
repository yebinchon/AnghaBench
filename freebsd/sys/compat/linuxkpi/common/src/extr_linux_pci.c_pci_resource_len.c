
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_entry {unsigned long count; } ;
struct pci_dev {int dummy; } ;


 struct resource_list_entry* linux_pci_get_bar (struct pci_dev*,int) ;

unsigned long
pci_resource_len(struct pci_dev *pdev, int bar)
{
 struct resource_list_entry *rle;

 if ((rle = linux_pci_get_bar(pdev, bar)) == ((void*)0))
  return (0);
 return (rle->count);
}
