
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;
typedef int ACPI_NAMESPACE_NODE ;
typedef int ACPI_HANDLE ;
typedef int ACPI_BUFFER ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int (*) (int ,int *)) ;
 int AcpiRsGetPrtMethodData (int *,int *) ;
 int AcpiRsValidateParameters (int ,int *,int **) ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiGetIrqRoutingTable (
    ACPI_HANDLE DeviceHandle,
    ACPI_BUFFER *RetBuffer)
{
    ACPI_STATUS Status;
    ACPI_NAMESPACE_NODE *Node;


    ACPI_FUNCTION_TRACE (AcpiGetIrqRoutingTable);




    Status = AcpiRsValidateParameters (DeviceHandle, RetBuffer, &Node);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    Status = AcpiRsGetPrtMethodData (Node, RetBuffer);
    return_ACPI_STATUS (Status);
}
