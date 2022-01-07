
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Flags; int Type; } ;
typedef TYPE_1__ ACPI_NAMESPACE_NODE ;




 int ANOBJ_METHOD_ARG ;
 int ANOBJ_METHOD_LOCAL ;
 int AcpiDbDecodeInternalObject (int ) ;
 int AcpiNsGetAttachedObject (TYPE_1__*) ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiUtGetNodeName (TYPE_1__*) ;

__attribute__((used)) static void
AcpiDbDecodeNode (
    ACPI_NAMESPACE_NODE *Node)
{

    AcpiOsPrintf ("<Node>            Name %4.4s",
        AcpiUtGetNodeName (Node));

    if (Node->Flags & ANOBJ_METHOD_ARG)
    {
        AcpiOsPrintf (" [Method Arg]");
    }
    if (Node->Flags & ANOBJ_METHOD_LOCAL)
    {
        AcpiOsPrintf (" [Method Local]");
    }

    switch (Node->Type)
    {


    case 129:

        AcpiOsPrintf (" Device");
        break;

    case 128:

        AcpiOsPrintf (" Thermal Zone");
        break;

    default:

        AcpiDbDecodeInternalObject (AcpiNsGetAttachedObject (Node));
        break;
    }
}
