
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_8__ {int Length; scalar_t__ Pointer; } ;
struct TYPE_11__ {TYPE_1__ Buffer; } ;
struct TYPE_10__ {int Pointer; int Length; } ;
struct TYPE_9__ {scalar_t__ Type; TYPE_4__* Object; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_NAMESPACE_NODE ;
typedef TYPE_3__ ACPI_BUFFER ;


 int ACPI_CAST_PTR (int ,int ) ;
 int ACPI_DB_CONSOLE_OUTPUT ;
 int ACPI_DB_REDIRECTABLE_OUTPUT ;
 int ACPI_DEBUG_BUFFER_SIZE ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_LV_RESOURCES ;
 int ACPI_RESOURCE ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 int ACPI_UINT32_MAX ;
 TYPE_2__* AcpiDbConvertToNode (char*) ;
 int AcpiDbSetOutputDestination (int ) ;
 int AcpiDbgLevel ;
 int AcpiFormatException (int ) ;
 int AcpiGbl_DbBuffer ;
 TYPE_2__* AcpiGbl_RootNode ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiRsCreateResourceList (TYPE_4__*,TYPE_3__*) ;
 int AcpiRsDumpResourceList (int ) ;
 int AcpiUtDebugDumpBuffer (int *,int ,int ,int ) ;
 int DB_BYTE_DISPLAY ;

void
AcpiDbDisplayTemplate (
    char *BufferArg)
{
    ACPI_NAMESPACE_NODE *Node;
    ACPI_STATUS Status;
    ACPI_BUFFER ReturnBuffer;




    Node = AcpiDbConvertToNode (BufferArg);
    if (!Node || (Node == AcpiGbl_RootNode))
    {
        AcpiOsPrintf ("Invalid argument: %s\n", BufferArg);
        return;
    }



    if (Node->Type != ACPI_TYPE_BUFFER)
    {
        AcpiOsPrintf ("Not a Buffer object, cannot be a template: %s\n",
            BufferArg);
        return;
    }

    ReturnBuffer.Length = ACPI_DEBUG_BUFFER_SIZE;
    ReturnBuffer.Pointer = AcpiGbl_DbBuffer;



    Status = AcpiRsCreateResourceList (Node->Object, &ReturnBuffer);

    AcpiDbSetOutputDestination (ACPI_DB_REDIRECTABLE_OUTPUT);
    AcpiDbgLevel |= ACPI_LV_RESOURCES;

    if (ACPI_FAILURE (Status))
    {
        AcpiOsPrintf (
            "Could not convert Buffer to a resource list: %s, %s\n",
            BufferArg, AcpiFormatException (Status));
        goto DumpBuffer;
    }



    AcpiRsDumpResourceList (ACPI_CAST_PTR (ACPI_RESOURCE,
        ReturnBuffer.Pointer));

DumpBuffer:
    AcpiOsPrintf ("\nRaw data buffer:\n");
    AcpiUtDebugDumpBuffer ((UINT8 *) Node->Object->Buffer.Pointer,
        Node->Object->Buffer.Length,
        DB_BYTE_DISPLAY, ACPI_UINT32_MAX);

    AcpiDbSetOutputDestination (ACPI_DB_CONSOLE_OUTPUT);
    return;
}
