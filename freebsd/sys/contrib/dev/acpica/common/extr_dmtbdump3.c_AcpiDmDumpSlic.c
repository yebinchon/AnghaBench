
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Length; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;


 int AcpiDmDumpTable (scalar_t__,int,TYPE_1__*,scalar_t__,int ) ;
 int AcpiDmTableInfoSlic ;

void
AcpiDmDumpSlic (
    ACPI_TABLE_HEADER *Table)
{

    (void) AcpiDmDumpTable (Table->Length, sizeof (ACPI_TABLE_HEADER), Table,
        Table->Length - sizeof (*Table), AcpiDmTableInfoSlic);
}
