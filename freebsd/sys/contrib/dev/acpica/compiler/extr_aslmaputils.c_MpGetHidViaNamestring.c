
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;
typedef int ACPI_NAMESPACE_NODE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_NS_NO_UPSEARCH ;
 int AcpiNsGetNode (int *,char*,int ,int **) ;
 char* MpGetHidValue (int *) ;

char *
MpGetHidViaNamestring (
    char *DeviceName)
{
    ACPI_NAMESPACE_NODE *DeviceNode;
    ACPI_STATUS Status;


    Status = AcpiNsGetNode (((void*)0), DeviceName, ACPI_NS_NO_UPSEARCH,
        &DeviceNode);
    if (ACPI_FAILURE (Status))
    {
        goto ErrorExit;
    }

    return (MpGetHidValue (DeviceNode));


ErrorExit:
    return ("-No HID-");
}
