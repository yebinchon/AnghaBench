
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int AML_RESOURCE_SMALL_HEADER ;
typedef int AML_RESOURCE ;
typedef int ACPI_OP_WALK_INFO ;


 int ACPI_ADD_PTR (int ,int *,int) ;
 int AcpiDmVendorCommon (char*,int ,int ,int ) ;
 int UINT8 ;

void
AcpiDmVendorSmallDescriptor (
    ACPI_OP_WALK_INFO *Info,
    AML_RESOURCE *Resource,
    UINT32 Length,
    UINT32 Level)
{

    AcpiDmVendorCommon ("Short",
        ACPI_ADD_PTR (UINT8, Resource, sizeof (AML_RESOURCE_SMALL_HEADER)),
        Length, Level);
}
