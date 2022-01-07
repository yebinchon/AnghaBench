
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ PciSegment; int EndBusNumber; int StartBusNumber; int Address; } ;
struct TYPE_4__ {int Length; } ;
typedef int ACPI_TABLE_MCFG ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_MCFG_ALLOCATION ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SIG_MCFG ;
 int AcpiGetTable (int ,int,TYPE_1__**) ;
 int pcie_cfgregopen (int ,int ,int ) ;

__attribute__((used)) static void
acpi_enable_pcie(void)
{

 ACPI_TABLE_HEADER *hdr;
 ACPI_MCFG_ALLOCATION *alloc, *end;
 ACPI_STATUS status;

 status = AcpiGetTable(ACPI_SIG_MCFG, 1, &hdr);
 if (ACPI_FAILURE(status))
  return;

 end = (ACPI_MCFG_ALLOCATION *)((char *)hdr + hdr->Length);
 alloc = (ACPI_MCFG_ALLOCATION *)((ACPI_TABLE_MCFG *)hdr + 1);
 while (alloc < end) {
  if (alloc->PciSegment == 0) {
   pcie_cfgregopen(alloc->Address, alloc->StartBusNumber,
       alloc->EndBusNumber);
   return;
  }
  alloc++;
 }

}
