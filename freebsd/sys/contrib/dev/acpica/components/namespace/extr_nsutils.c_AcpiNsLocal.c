
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef size_t ACPI_OBJECT_TYPE ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_NS_LOCAL ;
 int ACPI_NS_NORMAL ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 int* AcpiGbl_NsProperties ;
 int AcpiUtValidObjectType (size_t) ;
 int NsLocal ;
 int return_UINT32 (int) ;

UINT32
AcpiNsLocal (
    ACPI_OBJECT_TYPE Type)
{
    ACPI_FUNCTION_TRACE (NsLocal);


    if (!AcpiUtValidObjectType (Type))
    {


        ACPI_WARNING ((AE_INFO, "Invalid Object Type 0x%X", Type));
        return_UINT32 (ACPI_NS_NORMAL);
    }

    return_UINT32 (AcpiGbl_NsProperties[Type] & ACPI_NS_LOCAL);
}
