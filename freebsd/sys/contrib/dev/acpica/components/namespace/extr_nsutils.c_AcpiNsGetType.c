
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Type; } ;
typedef int ACPI_OBJECT_TYPE ;
typedef TYPE_1__ ACPI_NAMESPACE_NODE ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_TYPE_ANY ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 int NsGetType ;
 int return_UINT8 (int ) ;

ACPI_OBJECT_TYPE
AcpiNsGetType (
    ACPI_NAMESPACE_NODE *Node)
{
    ACPI_FUNCTION_TRACE (NsGetType);


    if (!Node)
    {
        ACPI_WARNING ((AE_INFO, "Null Node parameter"));
        return_UINT8 (ACPI_TYPE_ANY);
    }

    return_UINT8 (Node->Type);
}
