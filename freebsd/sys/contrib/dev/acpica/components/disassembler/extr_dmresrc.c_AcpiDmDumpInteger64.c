
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;


 int ACPI_FORMAT_UINT64 (int ) ;
 int AcpiOsPrintf (char*,int ,char const*) ;

void
AcpiDmDumpInteger64 (
    UINT64 Value,
    const char *Name)
{
    AcpiOsPrintf ("0x%8.8X%8.8X, // %s\n", ACPI_FORMAT_UINT64 (Value), Name);
}
