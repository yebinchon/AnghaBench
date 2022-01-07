
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {int Parent; } ;
struct TYPE_13__ {int AmlStart; int AmlLength; } ;
struct TYPE_15__ {TYPE_5__* Node; } ;
struct TYPE_14__ {int Flags; } ;
struct TYPE_16__ {TYPE_1__ Extra; TYPE_3__ BufferField; TYPE_2__ Common; } ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_OPERAND_OBJECT ;
typedef TYPE_5__ ACPI_NAMESPACE_NODE ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_EXEC (int ) ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_4__*) ;
 int ACPI_TYPE_BUFFER_FIELD ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int AcpiDsExecuteArguments (TYPE_5__*,int ,int ,int ) ;
 TYPE_4__* AcpiNsGetSecondaryObject (TYPE_4__*) ;
 int AcpiUtDisplayInitPathname (int ,TYPE_5__*,int *) ;
 int AcpiUtGetNodeName (TYPE_5__*) ;
 int DsGetBufferFieldArguments ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsGetBufferFieldArguments (
    ACPI_OPERAND_OBJECT *ObjDesc)
{
    ACPI_OPERAND_OBJECT *ExtraDesc;
    ACPI_NAMESPACE_NODE *Node;
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE_PTR (DsGetBufferFieldArguments, ObjDesc);


    if (ObjDesc->Common.Flags & AOPOBJ_DATA_VALID)
    {
        return_ACPI_STATUS (AE_OK);
    }



    ExtraDesc = AcpiNsGetSecondaryObject (ObjDesc);
    Node = ObjDesc->BufferField.Node;

    ACPI_DEBUG_EXEC (AcpiUtDisplayInitPathname (
        ACPI_TYPE_BUFFER_FIELD, Node, ((void*)0)));

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "[%4.4s] BufferField Arg Init\n",
        AcpiUtGetNodeName (Node)));



    Status = AcpiDsExecuteArguments (Node, Node->Parent,
        ExtraDesc->Extra.AmlLength, ExtraDesc->Extra.AmlStart);
    return_ACPI_STATUS (Status);
}
