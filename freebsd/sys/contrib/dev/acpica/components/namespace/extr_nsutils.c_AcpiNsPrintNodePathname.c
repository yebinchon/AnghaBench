
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Pointer; int Length; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_NAMESPACE_NODE ;
typedef TYPE_1__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_LOCAL_BUFFER ;
 int ACPI_FREE (scalar_t__) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AcpiNsHandleToPathname (int *,TYPE_1__*,int ) ;
 int AcpiOsPrintf (char*,...) ;
 int TRUE ;

void
AcpiNsPrintNodePathname (
    ACPI_NAMESPACE_NODE *Node,
    const char *Message)
{
    ACPI_BUFFER Buffer;
    ACPI_STATUS Status;


    if (!Node)
    {
        AcpiOsPrintf ("[NULL NAME]");
        return;
    }



    Buffer.Length = ACPI_ALLOCATE_LOCAL_BUFFER;

    Status = AcpiNsHandleToPathname (Node, &Buffer, TRUE);
    if (ACPI_SUCCESS (Status))
    {
        if (Message)
        {
            AcpiOsPrintf ("%s ", Message);
        }

        AcpiOsPrintf ("%s", (char *) Buffer.Pointer);
        ACPI_FREE (Buffer.Pointer);
    }
}
