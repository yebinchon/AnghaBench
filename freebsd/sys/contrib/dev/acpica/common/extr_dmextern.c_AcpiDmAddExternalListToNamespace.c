
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* Next; int Value; int Type; int InternalPath; } ;
typedef TYPE_1__ ACPI_EXTERNAL_LIST ;


 int AcpiDmAddOneExternalToNamespace (int ,int ,int ) ;
 TYPE_1__* AcpiGbl_ExternalList ;

void
AcpiDmAddExternalListToNamespace (
    void)
{
    ACPI_EXTERNAL_LIST *External = AcpiGbl_ExternalList;


    while (External)
    {
        AcpiDmAddOneExternalToNamespace (External->InternalPath,
            External->Type, External->Value);
        External = External->Next;
    }
}
