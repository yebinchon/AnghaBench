
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_12__ {TYPE_4__* Op; } ;
struct TYPE_9__ {scalar_t__ Integer; TYPE_4__* Arg; } ;
struct TYPE_10__ {TYPE_2__ Value; TYPE_5__* Node; TYPE_4__* Next; } ;
struct TYPE_8__ {scalar_t__ Data; } ;
struct TYPE_11__ {TYPE_3__ Common; TYPE_1__ Named; } ;
typedef int ACPI_SIZE ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;
typedef TYPE_5__ ACPI_NAMESPACE_NODE ;


 int AcpiDmAddResourceToNamespace ;
 int AcpiUtWalkAmlResources (int *,int *,int ,int ,void**) ;

__attribute__((used)) static void
AcpiDmAddResourcesToNamespace (
    ACPI_NAMESPACE_NODE *BufferNode,
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *NextOp;




    NextOp = Op->Common.Value.Arg;
    NextOp = NextOp->Common.Next;
    if (!NextOp)
    {
        return;
    }



    BufferNode->Op = Op;
    Op->Common.Node = BufferNode;





    AcpiUtWalkAmlResources (((void*)0), (UINT8 *) NextOp->Named.Data,
        (ACPI_SIZE) NextOp->Common.Value.Integer,
        AcpiDmAddResourceToNamespace, (void **) BufferNode);
}
