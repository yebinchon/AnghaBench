
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ Device; struct TYPE_5__* Next; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_PCI_DEVICE ;
typedef scalar_t__ ACPI_HANDLE ;


 TYPE_1__* ACPI_ALLOCATE (int) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AcpiGetParent (scalar_t__,scalar_t__*) ;
 int AcpiHwDeletePciList (TYPE_1__*) ;

__attribute__((used)) static ACPI_STATUS
AcpiHwBuildPciList (
    ACPI_HANDLE RootPciDevice,
    ACPI_HANDLE PciRegion,
    ACPI_PCI_DEVICE **ReturnListHead)
{
    ACPI_HANDLE CurrentDevice;
    ACPI_HANDLE ParentDevice;
    ACPI_STATUS Status;
    ACPI_PCI_DEVICE *ListElement;







    *ReturnListHead = ((void*)0);
    CurrentDevice = PciRegion;
    while (1)
    {
        Status = AcpiGetParent (CurrentDevice, &ParentDevice);
        if (ACPI_FAILURE (Status))
        {


            AcpiHwDeletePciList (*ReturnListHead);
            return (Status);
        }



        if (ParentDevice == RootPciDevice)
        {
            return (AE_OK);
        }

        ListElement = ACPI_ALLOCATE (sizeof (ACPI_PCI_DEVICE));
        if (!ListElement)
        {


            AcpiHwDeletePciList (*ReturnListHead);
            return (AE_NO_MEMORY);
        }



        ListElement->Next = *ReturnListHead;
        ListElement->Device = ParentDevice;
        *ReturnListHead = ListElement;

        CurrentDevice = ParentDevice;
    }
}
