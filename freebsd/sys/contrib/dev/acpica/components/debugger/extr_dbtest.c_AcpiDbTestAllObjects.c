
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int ACPI_DB_READ_METHOD ;
 int ACPI_DB_WRITE_METHOD ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AcpiDbTestOneObject ;
 int AcpiFormatException (int ) ;
 int AcpiGetHandle (int *,int ,int *) ;
 int AcpiInstallMethod (int ) ;
 int AcpiOsPrintf (char*,int ) ;
 int AcpiWalkNamespace (int ,int ,int ,int ,int *,int *,int *) ;
 int ReadHandle ;
 int ReadMethodCode ;
 int WriteHandle ;
 int WriteMethodCode ;

__attribute__((used)) static void
AcpiDbTestAllObjects (
    void)
{
    ACPI_STATUS Status;




    if (!ReadHandle)
    {
        Status = AcpiInstallMethod (ReadMethodCode);
        if (ACPI_FAILURE (Status))
        {
            AcpiOsPrintf ("%s, Could not install debugger read method\n",
                AcpiFormatException (Status));
            return;
        }

        Status = AcpiGetHandle (((void*)0), ACPI_DB_READ_METHOD, &ReadHandle);
        if (ACPI_FAILURE (Status))
        {
            AcpiOsPrintf ("Could not obtain handle for debug method %s\n",
                ACPI_DB_READ_METHOD);
            return;
        }
    }



    if (!WriteHandle)
    {
        Status = AcpiInstallMethod (WriteMethodCode);
        if (ACPI_FAILURE (Status))
        {
            AcpiOsPrintf ("%s, Could not install debugger write method\n",
                AcpiFormatException (Status));
            return;
        }

        Status = AcpiGetHandle (((void*)0), ACPI_DB_WRITE_METHOD, &WriteHandle);
        if (ACPI_FAILURE (Status))
        {
            AcpiOsPrintf ("Could not obtain handle for debug method %s\n",
                ACPI_DB_WRITE_METHOD);
            return;
        }
    }



    (void) AcpiWalkNamespace (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, AcpiDbTestOneObject, ((void*)0), ((void*)0), ((void*)0));
}
