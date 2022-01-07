
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 size_t ACPI_EXTRACT_1BIT_FLAG (int ,int) ;
 int * AcpiGbl_TrsDecode ;
 int * AcpiGbl_TtpDecode ;
 int AcpiOsPrintf (char*,int ) ;

__attribute__((used)) static void
AcpiDmIoFlags2 (
        UINT8 SpecificFlags)
{



    AcpiOsPrintf (", %s",
        AcpiGbl_TtpDecode [ACPI_EXTRACT_1BIT_FLAG (SpecificFlags, 4)]);





    AcpiOsPrintf (", %s",
        AcpiGbl_TrsDecode [ACPI_EXTRACT_1BIT_FLAG (SpecificFlags, 5)]);
}
