
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_2__ {int DisplayType; int AddressSpaceId; int DebugLevel; int OwnerId; scalar_t__ Count; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_REGION_WALK_INFO ;


 int ACPI_DISPLAY_SHORT ;
 int ACPI_DISPLAY_SUMMARY ;
 int ACPI_OWNER_ID_MAX ;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_LOCAL_REGION_FIELD ;
 int ACPI_UINT32_MAX ;
 int AE_OK ;
 int AcpiDbWalkForFields ;
 int AcpiWalkNamespace (int ,int ,int ,int ,int *,void*,int *) ;

ACPI_STATUS
AcpiDbDisplayFields (
    UINT32 AddressSpaceId)
{
    ACPI_REGION_WALK_INFO Info;


    Info.Count = 0;
    Info.OwnerId = ACPI_OWNER_ID_MAX;
    Info.DebugLevel = ACPI_UINT32_MAX;
    Info.DisplayType = ACPI_DISPLAY_SUMMARY | ACPI_DISPLAY_SHORT;
    Info.AddressSpaceId = AddressSpaceId;



    (void) AcpiWalkNamespace (ACPI_TYPE_LOCAL_REGION_FIELD, ACPI_ROOT_OBJECT,
          ACPI_UINT32_MAX, AcpiDbWalkForFields, ((void*)0),
          (void *) &Info, ((void*)0));

    return (AE_OK);
}
