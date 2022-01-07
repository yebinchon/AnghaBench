
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_22__ {int Flags; int Length; int Address; } ;
struct TYPE_21__ {int Pointer; } ;
struct TYPE_26__ {TYPE_4__ Region; TYPE_3__ String; } ;
struct TYPE_19__ {TYPE_7__* Arg; } ;
struct TYPE_20__ {int AmlOpcode; TYPE_1__ Value; int * Node; } ;
struct TYPE_25__ {TYPE_2__ Common; } ;
struct TYPE_24__ {int Length; } ;
struct TYPE_23__ {TYPE_8__** Operands; } ;
typedef TYPE_5__ ACPI_WALK_STATE ;
typedef TYPE_6__ ACPI_TABLE_HEADER ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_7__ ACPI_PARSE_OBJECT ;
typedef TYPE_8__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FORMAT_UINT64 (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_7__*) ;
 int ACPI_PTR_TO_PHYSADDR (TYPE_6__*) ;
 int ACPI_WALK_OPERANDS ;
 int AE_INFO ;
 scalar_t__ AE_NOT_EXIST ;
 scalar_t__ AE_NOT_FOUND ;
 int AOPOBJ_DATA_VALID ;
 scalar_t__ AcpiDsCreateOperands (TYPE_5__*,TYPE_7__*) ;
 scalar_t__ AcpiExResolveOperands (int ,int ,TYPE_5__*) ;
 scalar_t__ AcpiGetTableByIndex (int ,TYPE_6__**) ;
 TYPE_8__* AcpiNsGetAttachedObject (int *) ;
 scalar_t__ AcpiTbFindTable (int ,int ,int ,int *) ;
 int AcpiUtRemoveReference (TYPE_8__*) ;
 int DsEvalTableRegionOperands ;
 int return_ACPI_STATUS (scalar_t__) ;

ACPI_STATUS
AcpiDsEvalTableRegionOperands (
    ACPI_WALK_STATE *WalkState,
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_STATUS Status;
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_OPERAND_OBJECT **Operand;
    ACPI_NAMESPACE_NODE *Node;
    ACPI_PARSE_OBJECT *NextOp;
    ACPI_TABLE_HEADER *Table;
    UINT32 TableIndex;


    ACPI_FUNCTION_TRACE_PTR (DsEvalTableRegionOperands, Op);






    Node = Op->Common.Node;



    NextOp = Op->Common.Value.Arg;





    Status = AcpiDsCreateOperands (WalkState, NextOp);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    Operand = &WalkState->Operands[0];





    Status = AcpiExResolveOperands (
        Op->Common.AmlOpcode, ACPI_WALK_OPERANDS, WalkState);
    if (ACPI_FAILURE (Status))
    {
        goto Cleanup;
    }



    Status = AcpiTbFindTable (
        Operand[0]->String.Pointer,
        Operand[1]->String.Pointer,
        Operand[2]->String.Pointer, &TableIndex);
    if (ACPI_FAILURE (Status))
    {
        if (Status == AE_NOT_FOUND)
        {
            ACPI_ERROR ((AE_INFO,
                "ACPI Table [%4.4s] OEM:(%s, %s) not found in RSDT/XSDT",
                Operand[0]->String.Pointer,
                Operand[1]->String.Pointer,
                Operand[2]->String.Pointer));
        }
        goto Cleanup;
    }

    Status = AcpiGetTableByIndex (TableIndex, &Table);
    if (ACPI_FAILURE (Status))
    {
        goto Cleanup;
    }

    ObjDesc = AcpiNsGetAttachedObject (Node);
    if (!ObjDesc)
    {
        Status = AE_NOT_EXIST;
        goto Cleanup;
    }

    ObjDesc->Region.Address = ACPI_PTR_TO_PHYSADDR (Table);
    ObjDesc->Region.Length = Table->Length;

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "RgnObj %p Addr %8.8X%8.8X Len %X\n",
        ObjDesc, ACPI_FORMAT_UINT64 (ObjDesc->Region.Address),
        ObjDesc->Region.Length));



    ObjDesc->Region.Flags |= AOPOBJ_DATA_VALID;

Cleanup:
    AcpiUtRemoveReference (Operand[0]);
    AcpiUtRemoveReference (Operand[1]);
    AcpiUtRemoveReference (Operand[2]);

    return_ACPI_STATUS (Status);
}
