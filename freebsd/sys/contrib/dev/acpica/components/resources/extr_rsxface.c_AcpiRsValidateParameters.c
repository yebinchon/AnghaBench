
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Type; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_NAMESPACE_NODE ;
typedef int ACPI_HANDLE ;
typedef int ACPI_BUFFER ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_TYPE_DEVICE ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int AE_TYPE ;
 TYPE_1__* AcpiNsValidateHandle (int ) ;
 int AcpiUtValidateBuffer (int *) ;
 int RsValidateParameters ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiRsValidateParameters (
    ACPI_HANDLE DeviceHandle,
    ACPI_BUFFER *Buffer,
    ACPI_NAMESPACE_NODE **ReturnNode)
{
    ACPI_STATUS Status;
    ACPI_NAMESPACE_NODE *Node;


    ACPI_FUNCTION_TRACE (RsValidateParameters);





    if (!DeviceHandle)
    {
        return_ACPI_STATUS (AE_BAD_PARAMETER);
    }

    Node = AcpiNsValidateHandle (DeviceHandle);
    if (!Node)
    {
        return_ACPI_STATUS (AE_BAD_PARAMETER);
    }

    if (Node->Type != ACPI_TYPE_DEVICE)
    {
        return_ACPI_STATUS (AE_TYPE);
    }
    Status = AcpiUtValidateBuffer (Buffer);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    *ReturnNode = Node;
    return_ACPI_STATUS (AE_OK);
}
