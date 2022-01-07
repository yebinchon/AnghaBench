
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_4__ {int Ascii; } ;
struct TYPE_6__ {size_t Type; TYPE_1__ Name; } ;
struct TYPE_5__ {int * Types; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OBJECT_INFO ;
typedef TYPE_3__ ACPI_NAMESPACE_NODE ;
typedef scalar_t__ ACPI_HANDLE ;


 size_t ACPI_TYPE_NS_NODE_MAX ;
 int AE_OK ;
 int AcpiOsPrintf (char*,int ,size_t) ;

__attribute__((used)) static ACPI_STATUS
AcpiDbWalkForObjectCounts (
    ACPI_HANDLE ObjHandle,
    UINT32 NestingLevel,
    void *Context,
    void **ReturnValue)
{
    ACPI_OBJECT_INFO *Info = (ACPI_OBJECT_INFO *) Context;
    ACPI_NAMESPACE_NODE *Node = (ACPI_NAMESPACE_NODE *) ObjHandle;


    if (Node->Type > ACPI_TYPE_NS_NODE_MAX)
    {
        AcpiOsPrintf ("[%4.4s]: Unknown object type %X\n",
            Node->Name.Ascii, Node->Type);
    }
    else
    {
        Info->Types[Node->Type]++;
    }

    return (AE_OK);
}
