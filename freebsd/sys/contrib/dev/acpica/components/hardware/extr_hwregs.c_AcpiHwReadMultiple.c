
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef int UINT32 ;
struct TYPE_5__ {scalar_t__ Address; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_GENERIC_ADDRESS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int AcpiHwRead (scalar_t__*,TYPE_1__*) ;

__attribute__((used)) static ACPI_STATUS
AcpiHwReadMultiple (
    UINT32 *Value,
    ACPI_GENERIC_ADDRESS *RegisterA,
    ACPI_GENERIC_ADDRESS *RegisterB)
{
    UINT32 ValueA = 0;
    UINT32 ValueB = 0;
    UINT64 Value64;
    ACPI_STATUS Status;




    Status = AcpiHwRead (&Value64, RegisterA);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }
    ValueA = (UINT32) Value64;



    if (RegisterB->Address)
    {
        Status = AcpiHwRead (&Value64, RegisterB);
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }
        ValueB = (UINT32) Value64;
    }
    *Value = (ValueA | ValueB);
    return (AE_OK);
}
