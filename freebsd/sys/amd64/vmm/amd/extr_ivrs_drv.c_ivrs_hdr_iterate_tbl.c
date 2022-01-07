
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int (* ivhd_iter_t ) (TYPE_2__*,void*) ;
struct TYPE_6__ {scalar_t__ Length; } ;
struct TYPE_8__ {TYPE_1__ Header; } ;
struct TYPE_7__ {int Length; int Type; } ;
typedef TYPE_3__ ACPI_TABLE_IVRS ;
typedef int ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_IVRS_HEADER ;


 scalar_t__ ACPI_FAILURE (int ) ;



 int ACPI_SIG_IVRS ;
 int AcpiGetTable (int ,int,int **) ;



 int printf (char*,int) ;

__attribute__((used)) static void
ivrs_hdr_iterate_tbl(ivhd_iter_t iter, void *arg)
{
 ACPI_TABLE_IVRS *ivrs;
 ACPI_IVRS_HEADER *ivrs_hdr, *end;
 ACPI_STATUS status;

 status = AcpiGetTable(ACPI_SIG_IVRS, 1, (ACPI_TABLE_HEADER **)&ivrs);
 if (ACPI_FAILURE(status))
  return;

 if (ivrs->Header.Length == 0) {
  return;
 }

 ivrs_hdr = (ACPI_IVRS_HEADER *)(ivrs + 1);
 end = (ACPI_IVRS_HEADER *)((char *)ivrs + ivrs->Header.Length);

 while (ivrs_hdr < end) {
  if ((uint8_t *)ivrs_hdr + ivrs_hdr->Length > (uint8_t *)end) {
   printf("AMD-Vi:IVHD/IVMD is corrupted, length : %d\n",
       ivrs_hdr->Length);
   break;
  }

  switch (ivrs_hdr->Type) {
  case 129:
  case 130:
  case 128:
   if (!iter(ivrs_hdr, arg))
    return;
   break;

  case 133:
  case 132:
  case 131:
   if (!iter(ivrs_hdr, arg))
    return;

   break;

  default:
   printf("AMD-Vi:Not IVHD/IVMD type(%d)", ivrs_hdr->Type);

  }

  ivrs_hdr = (ACPI_IVRS_HEADER *)((uint8_t *)ivrs_hdr +
   ivrs_hdr->Length);
 }
}
