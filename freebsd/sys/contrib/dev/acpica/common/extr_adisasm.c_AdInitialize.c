
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int MaxTableCount; int Tables; scalar_t__ CurrentTableCount; } ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 char* AcpiFormatException (int ) ;
 TYPE_1__ AcpiGbl_RootTableList ;
 int AcpiNsRootInitialize () ;
 int AcpiOsInitialize () ;
 int AcpiUtInitGlobals () ;
 int AcpiUtMutexInitialize () ;
 int LocalTables ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

ACPI_STATUS
AdInitialize (
    void)
{
    ACPI_STATUS Status;




    Status = AcpiOsInitialize ();
    if (ACPI_FAILURE (Status))
    {
        fprintf (stderr, "Could not initialize ACPICA subsystem: %s\n",
            AcpiFormatException (Status));

        return (Status);
    }

    Status = AcpiUtInitGlobals ();
    if (ACPI_FAILURE (Status))
    {
        fprintf (stderr, "Could not initialize ACPICA globals: %s\n",
            AcpiFormatException (Status));

        return (Status);
    }

    Status = AcpiUtMutexInitialize ();
    if (ACPI_FAILURE (Status))
    {
        fprintf (stderr, "Could not initialize ACPICA mutex objects: %s\n",
            AcpiFormatException (Status));

        return (Status);
    }

    Status = AcpiNsRootInitialize ();
    if (ACPI_FAILURE (Status))
    {
        fprintf (stderr, "Could not initialize ACPICA namespace: %s\n",
            AcpiFormatException (Status));

        return (Status);
    }



    AcpiGbl_RootTableList.MaxTableCount = 1;
    AcpiGbl_RootTableList.CurrentTableCount = 0;
    AcpiGbl_RootTableList.Tables = LocalTables;

    return (AE_OK);
}
