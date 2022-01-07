
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_4__ {int * Pointer; } ;
typedef int BOOLEAN ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_SIZE ;
typedef int ACPI_NAMESPACE_NODE ;
typedef int ACPI_HANDLE ;
typedef TYPE_1__ ACPI_BUFFER ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,int ) ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 scalar_t__ AcpiNsBuildNormalizedPath (int *,int *,scalar_t__,int ) ;
 int * AcpiNsValidateHandle (int ) ;
 int AcpiUtInitializeBuffer (TYPE_1__*,scalar_t__) ;
 int NsHandleToPathname ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiNsHandleToPathname (
    ACPI_HANDLE TargetHandle,
    ACPI_BUFFER *Buffer,
    BOOLEAN NoTrailing)
{
    ACPI_STATUS Status;
    ACPI_NAMESPACE_NODE *Node;
    ACPI_SIZE RequiredSize;


    ACPI_FUNCTION_TRACE_PTR (NsHandleToPathname, TargetHandle);


    Node = AcpiNsValidateHandle (TargetHandle);
    if (!Node)
    {
        return_ACPI_STATUS (AE_BAD_PARAMETER);
    }



    RequiredSize = AcpiNsBuildNormalizedPath (Node, ((void*)0), 0, NoTrailing);
    if (!RequiredSize)
    {
        return_ACPI_STATUS (AE_BAD_PARAMETER);
    }



    Status = AcpiUtInitializeBuffer (Buffer, RequiredSize);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }



    (void) AcpiNsBuildNormalizedPath (Node, Buffer->Pointer,
        RequiredSize, NoTrailing);

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "%s [%X]\n",
        (char *) Buffer->Pointer, (UINT32) RequiredSize));
    return_ACPI_STATUS (AE_OK);
}
