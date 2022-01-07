
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int ACPI_SIZE ;
typedef scalar_t__ ACPI_PHYSICAL_ADDRESS ;


 void* pmap_mapbios (int ,int ) ;

void *
AcpiOsMapMemory(ACPI_PHYSICAL_ADDRESS PhysicalAddress, ACPI_SIZE Length)
{
    return (pmap_mapbios((vm_offset_t)PhysicalAddress, Length));
}
