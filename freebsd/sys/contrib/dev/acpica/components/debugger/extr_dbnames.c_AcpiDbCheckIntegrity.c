
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Objects; int Nodes; int member_1; int member_0; } ;
typedef TYPE_1__ ACPI_INTEGRITY_INFO ;


 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AcpiDbIntegrityWalk ;
 int AcpiOsPrintf (char*,int ,int ) ;
 int AcpiWalkNamespace (int ,int ,int ,int ,int *,void*,int *) ;

void
AcpiDbCheckIntegrity (
    void)
{
    ACPI_INTEGRITY_INFO Info = {0,0};



    (void) AcpiWalkNamespace (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, AcpiDbIntegrityWalk, ((void*)0), (void *) &Info, ((void*)0));

    AcpiOsPrintf ("Verified %u namespace nodes with %u Objects\n",
        Info.Nodes, Info.Objects);
}
