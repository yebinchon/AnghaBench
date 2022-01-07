
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef void* vm_offset_t ;
struct TYPE_2__ {void* Length; int Signature; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_NAMESEG_SIZE ;
 int AcpiTbChecksum (void*,void*) ;
 scalar_t__ bootverbose ;
 void* pmap_mapbios (int ,void*) ;
 int pmap_unmapbios (void*,void*) ;
 int printf (char*,char const*) ;
 scalar_t__ strncmp (int ,char const*,int ) ;

__attribute__((used)) static void *
map_table(vm_paddr_t pa, int offset, const char *sig)
{
 ACPI_TABLE_HEADER *header;
 vm_offset_t length;
 void *table;

 header = pmap_mapbios(pa, sizeof(ACPI_TABLE_HEADER));
 if (strncmp(header->Signature, sig, ACPI_NAMESEG_SIZE) != 0) {
  pmap_unmapbios((vm_offset_t)header, sizeof(ACPI_TABLE_HEADER));
  return (((void*)0));
 }
 length = header->Length;
 pmap_unmapbios((vm_offset_t)header, sizeof(ACPI_TABLE_HEADER));

 table = pmap_mapbios(pa, length);
 if (ACPI_FAILURE(AcpiTbChecksum(table, length))) {
  if (bootverbose)
   printf("ACPI: Failed checksum for table %s\n", sig);




 }
 return (table);
}
