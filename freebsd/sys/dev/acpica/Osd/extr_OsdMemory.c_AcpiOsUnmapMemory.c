
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int ACPI_SIZE ;


 int pmap_unmapbios (int ,int ) ;

void
AcpiOsUnmapMemory(void *LogicalAddress, ACPI_SIZE Length)
{
    pmap_unmapbios((vm_offset_t)LogicalAddress, Length);
}
