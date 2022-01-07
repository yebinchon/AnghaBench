
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ AmlOpcode; int * Node; TYPE_2__* Parent; } ;
struct TYPE_5__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;


 scalar_t__ AML_DEVICE_OP ;
 scalar_t__ AML_SCOPE_OP ;
 int ASL_FILE_MAP_OUTPUT ;
 char* AcpiNsGetExternalPathname (int *) ;
 int FlPrintFile (int ,char*) ;
 char* MpGetHidValue (int *) ;

char *
MpGetParentDeviceHid (
    ACPI_PARSE_OBJECT *Op,
    ACPI_NAMESPACE_NODE **TargetNode,
    char **ParentDeviceName)
{
    ACPI_NAMESPACE_NODE *DeviceNode;




    while (Op &&
        (Op->Asl.AmlOpcode != AML_DEVICE_OP) &&
        (Op->Asl.AmlOpcode != AML_SCOPE_OP))
    {
        Op = Op->Asl.Parent;
    }

    if (!Op)
    {
        FlPrintFile (ASL_FILE_MAP_OUTPUT, " No_Parent_Device ");
        goto ErrorExit;
    }



    DeviceNode = Op->Asl.Node;
    if (!DeviceNode)
    {
        FlPrintFile (ASL_FILE_MAP_OUTPUT, " No_Device_Node ");
        goto ErrorExit;
    }

    *ParentDeviceName = AcpiNsGetExternalPathname (DeviceNode);
    return (MpGetHidValue (DeviceNode));


ErrorExit:
    return ("-No HID-");
}
