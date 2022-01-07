
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ Type; TYPE_2__* Object; } ;
struct TYPE_6__ {char* Pointer; } ;
struct TYPE_7__ {TYPE_1__ String; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_NAMESPACE_NODE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_NS_NO_UPSEARCH ;
 scalar_t__ ACPI_TYPE_STRING ;
 int AcpiNsGetNode (TYPE_3__*,char*,int ,TYPE_3__**) ;
 char* METHOD_NAME__DDN ;

char *
MpGetDdnValue (
    char *DeviceName)
{
    ACPI_NAMESPACE_NODE *DeviceNode;
    ACPI_NAMESPACE_NODE *DdnNode;
    ACPI_STATUS Status;


    Status = AcpiNsGetNode (((void*)0), DeviceName, ACPI_NS_NO_UPSEARCH,
        &DeviceNode);
    if (ACPI_FAILURE (Status))
    {
        goto ErrorExit;
    }

    Status = AcpiNsGetNode (DeviceNode, METHOD_NAME__DDN, ACPI_NS_NO_UPSEARCH,
        &DdnNode);
    if (ACPI_FAILURE (Status))
    {
        goto ErrorExit;
    }

    if ((DdnNode->Type != ACPI_TYPE_STRING) ||
        !DdnNode->Object)
    {
        goto ErrorExit;
    }

    return (DdnNode->Object->String.Pointer);


ErrorExit:
    return (((void*)0));
}
