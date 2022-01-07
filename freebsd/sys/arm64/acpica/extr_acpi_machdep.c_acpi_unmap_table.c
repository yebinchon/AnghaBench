
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_2__ {int Length; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;


 int pmap_unmapbios (int ,int ) ;

void
acpi_unmap_table(void *table)
{
 ACPI_TABLE_HEADER *header;

 header = (ACPI_TABLE_HEADER *)table;
 pmap_unmapbios((vm_offset_t)table, header->Length);
}
