
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_12__ {int Objects; int Nodes; } ;
struct TYPE_10__ {int Ascii; } ;
struct TYPE_11__ {scalar_t__ Type; TYPE_1__ Name; scalar_t__ Object; } ;
typedef scalar_t__ BOOLEAN ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef TYPE_2__ ACPI_NAMESPACE_NODE ;
typedef TYPE_4__ ACPI_INTEGRITY_INFO ;
typedef scalar_t__ ACPI_HANDLE ;


 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (TYPE_2__*) ;
 scalar_t__ ACPI_TYPE_LOCAL_ALIAS ;
 scalar_t__ ACPI_TYPE_LOCAL_MAX ;
 scalar_t__ ACPI_TYPE_LOCAL_METHOD_ALIAS ;
 int AE_OK ;
 TYPE_2__* AcpiNsGetAttachedObject (TYPE_2__*) ;
 int AcpiOsPrintf (char*,TYPE_2__*,...) ;
 scalar_t__ AcpiUtGetDescriptorName (TYPE_2__*) ;
 int AcpiUtValidNameseg (int ) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;

__attribute__((used)) static ACPI_STATUS
AcpiDbIntegrityWalk (
    ACPI_HANDLE ObjHandle,
    UINT32 NestingLevel,
    void *Context,
    void **ReturnValue)
{
    ACPI_INTEGRITY_INFO *Info = (ACPI_INTEGRITY_INFO *) Context;
    ACPI_NAMESPACE_NODE *Node = (ACPI_NAMESPACE_NODE *) ObjHandle;
    ACPI_OPERAND_OBJECT *Object;
    BOOLEAN Alias = TRUE;


    Info->Nodes++;



    while (Alias)
    {
        if (ACPI_GET_DESCRIPTOR_TYPE (Node) != ACPI_DESC_TYPE_NAMED)
        {
            AcpiOsPrintf (
                "Invalid Descriptor Type for Node %p [%s] - "
                "is %2.2X should be %2.2X\n",
                Node, AcpiUtGetDescriptorName (Node),
                ACPI_GET_DESCRIPTOR_TYPE (Node), ACPI_DESC_TYPE_NAMED);
            return (AE_OK);
        }

        if ((Node->Type == ACPI_TYPE_LOCAL_ALIAS) ||
            (Node->Type == ACPI_TYPE_LOCAL_METHOD_ALIAS))
        {
            Node = (ACPI_NAMESPACE_NODE *) Node->Object;
        }
        else
        {
            Alias = FALSE;
        }
    }

    if (Node->Type > ACPI_TYPE_LOCAL_MAX)
    {
        AcpiOsPrintf ("Invalid Object Type for Node %p, Type = %X\n",
            Node, Node->Type);
        return (AE_OK);
    }

    if (!AcpiUtValidNameseg (Node->Name.Ascii))
    {
        AcpiOsPrintf ("Invalid AcpiName for Node %p\n", Node);
        return (AE_OK);
    }

    Object = AcpiNsGetAttachedObject (Node);
    if (Object)
    {
        Info->Objects++;
        if (ACPI_GET_DESCRIPTOR_TYPE (Object) != ACPI_DESC_TYPE_OPERAND)
        {
            AcpiOsPrintf ("Invalid Descriptor Type for Object %p [%s]\n",
                Object, AcpiUtGetDescriptorName (Object));
        }
    }

    return (AE_OK);
}
