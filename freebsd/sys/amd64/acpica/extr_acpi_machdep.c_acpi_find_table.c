
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
typedef int vm_offset_t ;
typedef int uintmax_t ;
typedef int UINT8 ;
typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_11__ {int Revision; scalar_t__ XsdtPhysicalAddress; scalar_t__ RsdtPhysicalAddress; } ;
struct TYPE_9__ {int Length; } ;
struct TYPE_10__ {scalar_t__* TableOffsetEntry; TYPE_1__ Header; } ;
typedef TYPE_2__ ACPI_TABLE_XSDT ;
typedef TYPE_2__ ACPI_TABLE_RSDT ;
typedef TYPE_4__ ACPI_TABLE_RSDP ;
typedef TYPE_2__ ACPI_TABLE_HEADER ;
typedef int ACPI_PHYSICAL_ADDRESS ;


 int ACPI_RSDP_XCHECKSUM_LENGTH ;
 char const* ACPI_SIG_RSDT ;
 char const* ACPI_SIG_XSDT ;
 int AcpiOsGetRootPointer () ;
 scalar_t__ AcpiTbChecksum (int *,int ) ;
 int acpi_unmap_table (TYPE_2__*) ;
 scalar_t__ bootverbose ;
 TYPE_2__* map_table (scalar_t__,int,char const*) ;
 TYPE_4__* pmap_mapbios (int ,int) ;
 int pmap_unmapbios (int ,int) ;
 int printf (char*,...) ;
 scalar_t__ probe_table (scalar_t__,char const*) ;
 scalar_t__ resource_disabled (char*,int ) ;

vm_paddr_t
acpi_find_table(const char *sig)
{
 ACPI_PHYSICAL_ADDRESS rsdp_ptr;
 ACPI_TABLE_RSDP *rsdp;
 ACPI_TABLE_RSDT *rsdt;
 ACPI_TABLE_XSDT *xsdt;
 ACPI_TABLE_HEADER *table;
 vm_paddr_t addr;
 int i, count;

 if (resource_disabled("acpi", 0))
  return (0);






 if ((rsdp_ptr = AcpiOsGetRootPointer()) == 0)
  return (0);
 rsdp = pmap_mapbios(rsdp_ptr, sizeof(ACPI_TABLE_RSDP));
 if (rsdp == ((void*)0)) {
  if (bootverbose)
   printf("ACPI: Failed to map RSDP\n");
  return (0);
 }







 addr = 0;
 if (rsdp->Revision >= 2 && rsdp->XsdtPhysicalAddress != 0) {





  if (AcpiTbChecksum((UINT8 *)rsdp, ACPI_RSDP_XCHECKSUM_LENGTH)) {
   if (bootverbose)
    printf("ACPI: RSDP failed extended checksum\n");
   return (0);
  }
  xsdt = map_table(rsdp->XsdtPhysicalAddress, 2, ACPI_SIG_XSDT);
  if (xsdt == ((void*)0)) {
   if (bootverbose)
    printf("ACPI: Failed to map XSDT\n");
   return (0);
  }
  count = (xsdt->Header.Length - sizeof(ACPI_TABLE_HEADER)) /
      sizeof(UINT64);
  for (i = 0; i < count; i++)
   if (probe_table(xsdt->TableOffsetEntry[i], sig)) {
    addr = xsdt->TableOffsetEntry[i];
    break;
   }
  acpi_unmap_table(xsdt);
 } else {
  rsdt = map_table(rsdp->RsdtPhysicalAddress, 2, ACPI_SIG_RSDT);
  if (rsdt == ((void*)0)) {
   if (bootverbose)
    printf("ACPI: Failed to map RSDT\n");
   return (0);
  }
  count = (rsdt->Header.Length - sizeof(ACPI_TABLE_HEADER)) /
      sizeof(UINT32);
  for (i = 0; i < count; i++)
   if (probe_table(rsdt->TableOffsetEntry[i], sig)) {
    addr = rsdt->TableOffsetEntry[i];
    break;
   }
  acpi_unmap_table(rsdt);
 }
 pmap_unmapbios((vm_offset_t)rsdp, sizeof(ACPI_TABLE_RSDP));
 if (addr == 0) {
  if (bootverbose)
   printf("ACPI: No %s table found\n", sig);
  return (0);
 }
 if (bootverbose)
  printf("%s: Found table at 0x%jx\n", sig, (uintmax_t)addr);





 table = map_table(addr, 0, sig);
 if (table == ((void*)0))
  return (0);
 acpi_unmap_table(table);

 return (addr);
}
