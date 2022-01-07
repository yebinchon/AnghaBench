
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int Signature; } ;
typedef TYPE_1__ ACPI_TABLE_RSDP ;


 int ACPI_SIG_RSDP ;
 scalar_t__ PTOV (char*) ;
 int RSDP_CHECKSUM_LENGTH ;
 int strlen (int ) ;
 int strncmp (int ,int ,int ) ;

__attribute__((used)) static ACPI_TABLE_RSDP *
biosacpi_search_rsdp(char *base, int length)
{
    ACPI_TABLE_RSDP *rsdp;
    uint8_t *cp, sum;
    int ofs, idx;


    for (ofs = 0; ofs < length; ofs += 16) {
 rsdp = (ACPI_TABLE_RSDP *)PTOV(base + ofs);


 if (!strncmp(rsdp->Signature, ACPI_SIG_RSDP, strlen(ACPI_SIG_RSDP))) {
     cp = (uint8_t *)rsdp;
     sum = 0;
     for (idx = 0; idx < RSDP_CHECKSUM_LENGTH; idx++)
  sum += *(cp + idx);
     if (sum != 0)
  continue;
     return(rsdp);
 }
    }
    return(((void*)0));
}
