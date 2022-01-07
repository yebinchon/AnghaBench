
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int Flags; } ;
struct TYPE_8__ {int * Node; } ;
struct TYPE_9__ {TYPE_1__ Asl; } ;
typedef int BOOLEAN ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;
typedef TYPE_3__ ACPI_OPCODE_INFO ;
typedef int ACPI_NAMESPACE_NODE ;


 int AML_CREATE ;
 int AML_DEFER ;
 int AML_HAS_ARGS ;
 int AML_NAMED ;
 int FALSE ;
 int TRUE ;
 int * UtGetParentMethod (int *) ;
 TYPE_2__* XfGetParentMethod (TYPE_2__*) ;

__attribute__((used)) static BOOLEAN
XfValidateCrossReference (
    ACPI_PARSE_OBJECT *Op,
    const ACPI_OPCODE_INFO *OpInfo,
    ACPI_NAMESPACE_NODE *Node)
{
    ACPI_PARSE_OBJECT *ReferencingMethodOp;
    ACPI_NAMESPACE_NODE *ReferencedMethodNode;




    if (OpInfo->Flags & (AML_NAMED | AML_CREATE | AML_DEFER | AML_HAS_ARGS))
    {
        return (TRUE);
    }





    ReferencingMethodOp = XfGetParentMethod (Op);
    ReferencedMethodNode = UtGetParentMethod (Node);

    if (!ReferencingMethodOp && !ReferencedMethodNode)
    {




        return (TRUE);
    }

    if (!ReferencingMethodOp && ReferencedMethodNode)
    {




        return (FALSE);
    }
    else if (ReferencingMethodOp && !ReferencedMethodNode)
    {




        return (TRUE);
    }
    else if (ReferencingMethodOp->Asl.Node == ReferencedMethodNode)
    {




        return (TRUE);
    }
    else
    {




        return (FALSE);
    }
}
