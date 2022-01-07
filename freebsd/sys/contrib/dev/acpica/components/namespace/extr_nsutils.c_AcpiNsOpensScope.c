
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef size_t ACPI_OBJECT_TYPE ;


 int ACPI_FUNCTION_ENTRY () ;
 int ACPI_NS_NEWSCOPE ;
 int ACPI_NS_NORMAL ;
 size_t ACPI_TYPE_LOCAL_MAX ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 scalar_t__* AcpiGbl_NsProperties ;

UINT32
AcpiNsOpensScope (
    ACPI_OBJECT_TYPE Type)
{
    ACPI_FUNCTION_ENTRY ();


    if (Type > ACPI_TYPE_LOCAL_MAX)
    {


        ACPI_WARNING ((AE_INFO, "Invalid Object Type 0x%X", Type));
        return (ACPI_NS_NORMAL);
    }

    return (((UINT32) AcpiGbl_NsProperties[Type]) & ACPI_NS_NEWSCOPE);
}
