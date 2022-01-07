
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_4__ {scalar_t__ Value; scalar_t__ Length; struct TYPE_4__* Peer; struct TYPE_4__* Child; } ;
typedef TYPE_1__ ACPI_NAMESPACE_NODE ;


 scalar_t__ ACPI_DIV_8 (scalar_t__) ;

__attribute__((used)) static ACPI_NAMESPACE_NODE *
AcpiDmGetResourceNode (
    ACPI_NAMESPACE_NODE *BufferNode,
    UINT32 BitIndex)
{
    ACPI_NAMESPACE_NODE *Node;
    UINT32 ByteIndex = ACPI_DIV_8 (BitIndex);
    Node = BufferNode->Child;
    while (Node)
    {






        if ((ByteIndex >= Node->Value) &&
            (ByteIndex < (Node->Value + Node->Length)))
        {
            return (Node);
        }

        Node = Node->Peer;
    }

    return (((void*)0));
}
