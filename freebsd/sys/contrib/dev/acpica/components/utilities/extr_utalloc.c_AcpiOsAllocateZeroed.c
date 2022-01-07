
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_SIZE ;


 int ACPI_FUNCTION_ENTRY () ;
 void* AcpiOsAllocate (int ) ;
 int memset (void*,int ,int ) ;

void *
AcpiOsAllocateZeroed (
    ACPI_SIZE Size)
{
    void *Allocation;


    ACPI_FUNCTION_ENTRY ();


    Allocation = AcpiOsAllocate (Size);
    if (Allocation)
    {


        memset (Allocation, 0, Size);
    }

    return (Allocation);
}
