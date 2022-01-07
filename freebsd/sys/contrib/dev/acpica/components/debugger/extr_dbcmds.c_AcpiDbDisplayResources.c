
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Ascii; } ;
struct TYPE_7__ {scalar_t__ Type; TYPE_1__ Name; } ;
typedef TYPE_2__ ACPI_NAMESPACE_NODE ;


 int ACPI_DB_CONSOLE_OUTPUT ;
 int ACPI_DB_REDIRECTABLE_OUTPUT ;
 int ACPI_LV_RESOURCES ;
 int ACPI_ROOT_OBJECT ;
 scalar_t__ ACPI_TYPE_DEVICE ;
 int ACPI_UINT32_MAX ;
 TYPE_2__* AcpiDbConvertToNode (char*) ;
 int AcpiDbDeviceResources (TYPE_2__*,int ,int *,int *) ;
 int AcpiDbSetOutputDestination (int ) ;
 int AcpiDbgLevel ;
 int AcpiOsPrintf (char*,int ,int ) ;
 int AcpiUtGetTypeName (scalar_t__) ;
 int AcpiWalkNamespace (scalar_t__,int ,int ,int (*) (TYPE_2__*,int ,int *,int *),int *,int *,int *) ;
 int strcmp (char*,char*) ;

void
AcpiDbDisplayResources (
    char *ObjectArg)
{
    ACPI_NAMESPACE_NODE *Node;


    AcpiDbSetOutputDestination (ACPI_DB_REDIRECTABLE_OUTPUT);
    AcpiDbgLevel |= ACPI_LV_RESOURCES;



    if (!ObjectArg || (!strcmp (ObjectArg, "*")))
    {
        (void) AcpiWalkNamespace (ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
            ACPI_UINT32_MAX, AcpiDbDeviceResources, ((void*)0), ((void*)0), ((void*)0));
    }
    else
    {


        Node = AcpiDbConvertToNode (ObjectArg);
        if (Node)
        {
            if (Node->Type != ACPI_TYPE_DEVICE)
            {
                AcpiOsPrintf (
                    "%4.4s: Name is not a device object (%s)\n",
                    Node->Name.Ascii, AcpiUtGetTypeName (Node->Type));
            }
            else
            {
                (void) AcpiDbDeviceResources (Node, 0, ((void*)0), ((void*)0));
            }
        }
    }

    AcpiDbSetOutputDestination (ACPI_DB_CONSOLE_OUTPUT);
}
