
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_3__ {scalar_t__ Type; int Flags; struct TYPE_3__* Next; } ;
typedef TYPE_1__ ACPI_EXTERNAL_LIST ;


 int ACPI_EXT_ORIGIN_FROM_OPCODE ;
 scalar_t__ ACPI_TYPE_METHOD ;
 TYPE_1__* AcpiGbl_ExternalList ;

UINT32
AcpiDmGetUnresolvedExternalMethodCount (
    void)
{
    ACPI_EXTERNAL_LIST *External = AcpiGbl_ExternalList;
    UINT32 Count = 0;


    while (External)
    {
        if (External->Type == ACPI_TYPE_METHOD &&
            !(External->Flags & ACPI_EXT_ORIGIN_FROM_OPCODE))
        {
            Count++;
        }

        External = External->Next;
    }

    return (Count);
}
