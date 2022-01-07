
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Length; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;


 int table_unmap (void*,int ) ;

void
acpi_unmap_table(void *table)
{
 ACPI_TABLE_HEADER *header;

 header = (ACPI_TABLE_HEADER *)table;
 table_unmap(table, header->Length);
}
