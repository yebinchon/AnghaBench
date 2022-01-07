
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Pointer; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_NAMESPACE_NODE ;
typedef int ACPI_HANDLE ;
typedef TYPE_1__ ACPI_BUFFER ;


 int ACPI_COPY_NAMESEG (scalar_t__,char const*) ;
 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,int ) ;
 size_t ACPI_NAMESEG_SIZE ;
 int ACPI_PATH_SEGMENT_LENGTH ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int * AcpiNsValidateHandle (int ) ;
 char* AcpiUtGetNodeName (int *) ;
 int AcpiUtInitializeBuffer (TYPE_1__*,int ) ;
 int NsHandleToName ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiNsHandleToName (
    ACPI_HANDLE TargetHandle,
    ACPI_BUFFER *Buffer)
{
    ACPI_STATUS Status;
    ACPI_NAMESPACE_NODE *Node;
    const char *NodeName;


    ACPI_FUNCTION_TRACE_PTR (NsHandleToName, TargetHandle);


    Node = AcpiNsValidateHandle (TargetHandle);
    if (!Node)
    {
        return_ACPI_STATUS (AE_BAD_PARAMETER);
    }



    Status = AcpiUtInitializeBuffer (Buffer, ACPI_PATH_SEGMENT_LENGTH);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }



    NodeName = AcpiUtGetNodeName (Node);
    ACPI_COPY_NAMESEG (Buffer->Pointer, NodeName);
    ((char *) Buffer->Pointer) [ACPI_NAMESEG_SIZE] = 0;

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "%4.4s\n", (char *) Buffer->Pointer));
    return_ACPI_STATUS (AE_OK);
}
