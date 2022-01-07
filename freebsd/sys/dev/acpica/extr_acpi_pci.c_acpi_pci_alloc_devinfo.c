
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devinfo {int dummy; } ;
struct acpi_pci_devinfo {struct pci_devinfo ap_dinfo; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 struct acpi_pci_devinfo* malloc (int,int ,int) ;

__attribute__((used)) static struct pci_devinfo *
acpi_pci_alloc_devinfo(device_t dev)
{
 struct acpi_pci_devinfo *dinfo;

 dinfo = malloc(sizeof(*dinfo), M_DEVBUF, M_WAITOK | M_ZERO);
 return (&dinfo->ap_dinfo);
}
