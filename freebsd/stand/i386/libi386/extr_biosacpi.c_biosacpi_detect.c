
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Revision; int RsdtPhysicalAddress; int XsdtPhysicalAddress; int Length; int OemId; } ;
typedef TYPE_1__ ACPI_TABLE_RSDP ;


 int VTOP (TYPE_1__*) ;
 TYPE_1__* biosacpi_find_rsdp () ;
 int setenv (char*,char*,int) ;
 int sprintf (char*,char*,int) ;
 int strncpy (char*,int ,int) ;

void
biosacpi_detect(void)
{
    ACPI_TABLE_RSDP *rsdp;
    char buf[24];
    int revision;


    if ((rsdp = biosacpi_find_rsdp()) == ((void*)0))
 return;
    sprintf(buf, "0x%08x", VTOP(rsdp));
    setenv("hint.acpi.0.rsdp", buf, 1);
    setenv("acpi.rsdp", buf, 1);
    revision = rsdp->Revision;
    if (revision == 0)
 revision = 1;
    sprintf(buf, "%d", revision);
    setenv("hint.acpi.0.revision", buf, 1);
    setenv("acpi.revision", buf, 1);
    strncpy(buf, rsdp->OemId, sizeof(rsdp->OemId));
    buf[sizeof(rsdp->OemId)] = '\0';
    setenv("hint.acpi.0.oem", buf, 1);
    setenv("acpi.oem", buf, 1);
    sprintf(buf, "0x%08x", rsdp->RsdtPhysicalAddress);
    setenv("hint.acpi.0.rsdt", buf, 1);
    setenv("acpi.rsdt", buf, 1);
    if (revision >= 2) {

 sprintf(buf, "0x%016llx", rsdp->XsdtPhysicalAddress);
 setenv("hint.acpi.0.xsdt", buf, 1);
 setenv("acpi.xsdt", buf, 1);
 sprintf(buf, "%d", rsdp->Length);
 setenv("hint.acpi.0.xsdt_length", buf, 1);
 setenv("acpi.xsdt_length", buf, 1);
    }
}
