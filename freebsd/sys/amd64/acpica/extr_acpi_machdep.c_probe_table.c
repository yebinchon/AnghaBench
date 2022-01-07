
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
typedef int uintmax_t ;
struct TYPE_4__ {char* Signature; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;


 int ACPI_NAMESEG_SIZE ;
 scalar_t__ bootverbose ;
 int printf (char*,char*,...) ;
 scalar_t__ strncmp (char*,char const*,int ) ;
 TYPE_1__* table_map (scalar_t__,int ,int) ;
 int table_unmap (TYPE_1__*,int) ;

__attribute__((used)) static int
probe_table(vm_paddr_t address, const char *sig)
{
 ACPI_TABLE_HEADER *table;

 table = table_map(address, 0, sizeof(ACPI_TABLE_HEADER));
 if (table == ((void*)0)) {
  if (bootverbose)
   printf("ACPI: Failed to map table at 0x%jx\n",
       (uintmax_t)address);
  return (0);
 }
 if (bootverbose)
  printf("Table '%.4s' at 0x%jx\n", table->Signature,
      (uintmax_t)address);

 if (strncmp(table->Signature, sig, ACPI_NAMESEG_SIZE) != 0) {
  table_unmap(table, sizeof(ACPI_TABLE_HEADER));
  return (0);
 }
 table_unmap(table, sizeof(ACPI_TABLE_HEADER));
 return (1);
}
