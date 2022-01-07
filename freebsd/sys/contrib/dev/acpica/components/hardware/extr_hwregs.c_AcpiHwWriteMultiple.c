
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_5__ {scalar_t__ Address; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_GENERIC_ADDRESS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AcpiHwWrite (int ,TYPE_1__*) ;

__attribute__((used)) static ACPI_STATUS
AcpiHwWriteMultiple (
    UINT32 Value,
    ACPI_GENERIC_ADDRESS *RegisterA,
    ACPI_GENERIC_ADDRESS *RegisterB)
{
    ACPI_STATUS Status;




    Status = AcpiHwWrite (Value, RegisterA);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }
    if (RegisterB->Address)
    {
        Status = AcpiHwWrite (Value, RegisterB);
    }

    return (Status);
}
