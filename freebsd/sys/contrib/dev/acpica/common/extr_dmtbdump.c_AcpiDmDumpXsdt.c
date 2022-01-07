
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT64 ;
typedef size_t UINT32 ;
struct TYPE_6__ {int * TableOffsetEntry; } ;
struct TYPE_5__ {int Length; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;


 TYPE_3__* ACPI_CAST_PTR (int ,TYPE_1__*) ;
 int ACPI_FORMAT_UINT64 (int ) ;
 int ACPI_TABLE_XSDT ;
 int AcpiDmLineHeader2 (size_t,int,char*,size_t) ;
 int AcpiOsPrintf (char*,int ) ;

void
AcpiDmDumpXsdt (
    ACPI_TABLE_HEADER *Table)
{
    UINT64 *Array;
    UINT32 Entries;
    UINT32 Offset;
    UINT32 i;




    Array = ACPI_CAST_PTR (ACPI_TABLE_XSDT, Table)->TableOffsetEntry;
    Offset = sizeof (ACPI_TABLE_HEADER);



    Entries = (Table->Length - sizeof (ACPI_TABLE_HEADER)) / sizeof (UINT64);

    for (i = 0; i < Entries; i++)
    {
        AcpiDmLineHeader2 (Offset, sizeof (UINT64), "ACPI Table Address", i);
        AcpiOsPrintf ("%8.8X%8.8X\n", ACPI_FORMAT_UINT64 (Array[i]));
        Offset += sizeof (UINT64);
    }
}
