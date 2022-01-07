
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT64 ;
struct TYPE_4__ {int Integer; } ;
struct TYPE_5__ {TYPE_1__ Name; } ;
typedef TYPE_2__ ACPI_NAMESPACE_NODE ;


 int * ACPI_CAST_PTR (int ,char*) ;
 int ACPI_DEFAULT_RESNAME ;
 int ACPI_NAMESEG_SIZE ;
 size_t ACPI_NUM_RES_PREFIX ;
 size_t AcpiGbl_NextPrefix ;
 int AcpiGbl_NextResourceId ;
 char* AcpiGbl_Prefix ;
 char AcpiUtHexToAsciiChar (int ,int) ;
 int UINT32 ;

__attribute__((used)) static void
AcpiDmUpdateResourceName (
    ACPI_NAMESPACE_NODE *ResourceNode)
{
    char Name[ACPI_NAMESEG_SIZE];




    if (ResourceNode->Name.Integer != ACPI_DEFAULT_RESNAME)
    {
        return;
    }



    Name[0] = '_';
    Name[1] = AcpiGbl_Prefix[AcpiGbl_NextPrefix];
    Name[2] = AcpiUtHexToAsciiChar ((UINT64) AcpiGbl_NextResourceId, 4);
    Name[3] = AcpiUtHexToAsciiChar ((UINT64) AcpiGbl_NextResourceId, 0);



    AcpiGbl_NextResourceId++;
    if (AcpiGbl_NextResourceId >= 256)
    {
        AcpiGbl_NextResourceId = 0;
        AcpiGbl_NextPrefix++;

        if (AcpiGbl_NextPrefix > ACPI_NUM_RES_PREFIX)
        {
            AcpiGbl_NextPrefix = 0;
        }
    }



    ResourceNode->Name.Integer = *ACPI_CAST_PTR (UINT32, &Name[0]);
}
