
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT8 ;


 size_t ACPI_ADR_SPACE_DATA_TABLE ;
 size_t ACPI_ADR_SPACE_FIXED_HARDWARE ;
 size_t ACPI_NUM_PREDEFINED_REGIONS ;
 size_t ACPI_USER_REGION_BEGIN ;
 char const** AcpiGbl_RegionTypes ;

const char *
AcpiUtGetRegionName (
    UINT8 SpaceId)
{

    if (SpaceId >= ACPI_USER_REGION_BEGIN)
    {
        return ("UserDefinedRegion");
    }
    else if (SpaceId == ACPI_ADR_SPACE_DATA_TABLE)
    {
        return ("DataTable");
    }
    else if (SpaceId == ACPI_ADR_SPACE_FIXED_HARDWARE)
    {
        return ("FunctionalFixedHW");
    }
    else if (SpaceId >= ACPI_NUM_PREDEFINED_REGIONS)
    {
        return ("InvalidSpaceId");
    }

    return (AcpiGbl_RegionTypes[SpaceId]);
}
