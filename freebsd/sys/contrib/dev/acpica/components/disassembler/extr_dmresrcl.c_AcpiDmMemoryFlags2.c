
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 size_t ACPI_EXTRACT_1BIT_FLAG (int ,int) ;
 size_t ACPI_EXTRACT_2BIT_FLAG (int ,int) ;
 int * AcpiGbl_MtpDecode ;
 int * AcpiGbl_TtpDecode ;
 int AcpiOsPrintf (char*,int ,int ) ;

__attribute__((used)) static void
AcpiDmMemoryFlags2 (
    UINT8 SpecificFlags)
{

    AcpiOsPrintf (", %s, %s",
        AcpiGbl_MtpDecode [ACPI_EXTRACT_2BIT_FLAG (SpecificFlags, 3)],
        AcpiGbl_TtpDecode [ACPI_EXTRACT_1BIT_FLAG (SpecificFlags, 5)]);
}
