
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_3__ {int Function; int Device; int Bus; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_PCI_ID ;


 int AE_NOT_EXIST ;
 int AE_OK ;
 int AE_SUPPORT ;
 int pci_cfgregopen () ;
 int pci_cfgregwrite (int ,int ,int ,int,int ,int) ;

ACPI_STATUS
AcpiOsWritePciConfiguration (ACPI_PCI_ID *PciId, UINT32 Register,
    UINT64 Value, UINT32 Width)
{





    if (Width == 64)
 return (AE_SUPPORT);

    if (!pci_cfgregopen())
     return (AE_NOT_EXIST);

    pci_cfgregwrite(PciId->Bus, PciId->Device, PciId->Function, Register,
 Value, Width / 8);

    return (AE_OK);

}
