
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef void* uint8_t ;
typedef void* uint64_t ;
typedef void* uint32_t ;
typedef void* uint16_t ;
typedef void* UINT64 ;
typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_PHYSICAL_ADDRESS ;


 int AE_NOT_EXIST ;
 int AE_OK ;
 void* pmap_mapdev (int ,int) ;
 int pmap_unmapdev (int ,int) ;

ACPI_STATUS
AcpiOsWriteMemory(ACPI_PHYSICAL_ADDRESS Address, UINT64 Value, UINT32 Width)
{
    void *LogicalAddress;

    LogicalAddress = pmap_mapdev(Address, Width / 8);
    if (LogicalAddress == ((void*)0))
 return (AE_NOT_EXIST);

    switch (Width) {
    case 8:
 *(volatile uint8_t *)LogicalAddress = Value;
 break;
    case 16:
 *(volatile uint16_t *)LogicalAddress = Value;
 break;
    case 32:
 *(volatile uint32_t *)LogicalAddress = Value;
 break;
    case 64:
 *(volatile uint64_t *)LogicalAddress = Value;
 break;
    }

    pmap_unmapdev((vm_offset_t)LogicalAddress, Width / 8);

    return (AE_OK);
}
