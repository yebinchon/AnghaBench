
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_4__ {int Length; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;


 int ACPI_UINT32_MAX ;
 int AE_NOT_EXIST ;
 int AE_OK ;
 int AcpiDmDisassemble (int *,int ,int ) ;
 scalar_t__ AcpiGbl_DmOpt_Listing ;
 int AcpiGbl_ParseOpRoot ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiUtDebugDumpBuffer (int *,int,int ,int ) ;
 int AdCreateTableHeader (char*,TYPE_1__*) ;
 int DB_BYTE_DISPLAY ;
 int MpEmitMappingInfo () ;

ACPI_STATUS
AdDisplayTables (
    char *Filename,
    ACPI_TABLE_HEADER *Table)
{


    if (!AcpiGbl_ParseOpRoot)
    {
        return (AE_NOT_EXIST);
    }

    if (!AcpiGbl_DmOpt_Listing)
    {
        AdCreateTableHeader (Filename, Table);
    }

    AcpiDmDisassemble (((void*)0), AcpiGbl_ParseOpRoot, ACPI_UINT32_MAX);
    MpEmitMappingInfo ();

    if (AcpiGbl_DmOpt_Listing)
    {
        AcpiOsPrintf ("\n\nTable Header:\n");
        AcpiUtDebugDumpBuffer ((UINT8 *) Table, sizeof (ACPI_TABLE_HEADER),
            DB_BYTE_DISPLAY, ACPI_UINT32_MAX);

        AcpiOsPrintf ("Table Body (Length 0x%X)\n", Table->Length);
        AcpiUtDebugDumpBuffer (((UINT8 *) Table + sizeof (ACPI_TABLE_HEADER)),
            Table->Length, DB_BYTE_DISPLAY, ACPI_UINT32_MAX);
    }

    return (AE_OK);
}
