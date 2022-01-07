
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int * caddr_t ;
struct TYPE_5__ {int * Signature; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;


 int ACPI_COMPARE_NAMESEG (int *,int ) ;
 int ACPI_NAMESEG_SIZE ;
 int ACPI_SIG_DSDT ;
 int AE_BAD_PARAMETER ;
 int AE_ERROR ;
 int AE_NOT_FOUND ;
 int AE_OK ;
 int AE_SUPPORT ;
 int AcpiGbl_DisableSsdtTableInstall ;
 int TRUE ;
 TYPE_1__* preload_fetch_addr (int *) ;
 size_t preload_fetch_size (int *) ;
 int * preload_search_by_type (char*) ;
 char tolower (int ) ;

ACPI_STATUS
AcpiOsTableOverride(ACPI_TABLE_HEADER *ExistingTable,
    ACPI_TABLE_HEADER **NewTable)
{
 char modname[] = "acpi_dsdt";
 caddr_t acpi_table;
 ACPI_TABLE_HEADER *hdr;
 size_t sz;

 if (ExistingTable == ((void*)0) || NewTable == ((void*)0))
  return (AE_BAD_PARAMETER);

 *NewTable = ((void*)0);
 if (!ACPI_COMPARE_NAMESEG(ExistingTable->Signature, ACPI_SIG_DSDT))




  return (AE_SUPPORT);

 acpi_table = preload_search_by_type(modname);
 if (acpi_table == ((void*)0))
  return (AE_NOT_FOUND);
 hdr = preload_fetch_addr(acpi_table);
 sz = preload_fetch_size(acpi_table);
 if (hdr == ((void*)0) || sz == 0)
  return (AE_ERROR);


 AcpiGbl_DisableSsdtTableInstall = TRUE;

 *NewTable = hdr;
 return (AE_OK);
}
