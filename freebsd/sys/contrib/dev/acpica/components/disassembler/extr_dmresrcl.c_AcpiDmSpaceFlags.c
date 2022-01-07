
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 size_t ACPI_EXTRACT_1BIT_FLAG (int ,int) ;
 size_t ACPI_GET_1BIT_FLAG (int ) ;
 int * AcpiGbl_ConsumeDecode ;
 int * AcpiGbl_DecDecode ;
 int * AcpiGbl_MaxDecode ;
 int * AcpiGbl_MinDecode ;
 int AcpiOsPrintf (char*,int ,int ,int ,int ) ;

__attribute__((used)) static void
AcpiDmSpaceFlags (
    UINT8 Flags)
{

    AcpiOsPrintf ("%s, %s, %s, %s,",
        AcpiGbl_ConsumeDecode [ACPI_GET_1BIT_FLAG (Flags)],
        AcpiGbl_DecDecode [ACPI_EXTRACT_1BIT_FLAG (Flags, 1)],
        AcpiGbl_MinDecode [ACPI_EXTRACT_1BIT_FLAG (Flags, 2)],
        AcpiGbl_MaxDecode [ACPI_EXTRACT_1BIT_FLAG (Flags, 3)]);
}
