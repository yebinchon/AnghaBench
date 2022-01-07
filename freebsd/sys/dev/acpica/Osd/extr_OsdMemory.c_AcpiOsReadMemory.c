
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int UINT64 ;
typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_PHYSICAL_ADDRESS ;


 int AE_NOT_EXIST ;
 int AE_OK ;
 void* pmap_mapdev (int ,int) ;
 int pmap_unmapdev (int ,int) ;

ACPI_STATUS
AcpiOsReadMemory(ACPI_PHYSICAL_ADDRESS Address, UINT64 *Value, UINT32 Width)
{
    void *LogicalAddress;

    LogicalAddress = pmap_mapdev(Address, Width / 8);
    if (LogicalAddress == ((void*)0))
 return (AE_NOT_EXIST);

    switch (Width) {
    case 8:
 *Value = *(volatile uint8_t *)LogicalAddress;
 break;
    case 16:
 *Value = *(volatile uint16_t *)LogicalAddress;
 break;
    case 32:
 *Value = *(volatile uint32_t *)LogicalAddress;
 break;
    case 64:
 *Value = *(volatile uint64_t *)LogicalAddress;
 break;
    }

    pmap_unmapdev((vm_offset_t)LogicalAddress, Width / 8);

    return (AE_OK);
}
