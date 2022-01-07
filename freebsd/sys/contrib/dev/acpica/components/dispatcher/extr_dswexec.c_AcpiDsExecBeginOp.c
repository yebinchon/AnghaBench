
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_28__ {int Type; } ;
struct TYPE_27__ {int Class; int ObjectType; } ;
struct TYPE_24__ {TYPE_9__* Node; } ;
struct TYPE_23__ {scalar_t__ AmlOpcode; } ;
struct TYPE_26__ {TYPE_5__ Named; TYPE_4__ Common; } ;
struct TYPE_25__ {scalar_t__ Opcode; int WalkType; TYPE_8__* OpInfo; TYPE_3__* ControlState; TYPE_7__* Origin; TYPE_7__* Op; } ;
struct TYPE_21__ {TYPE_7__* PredicateOp; } ;
struct TYPE_20__ {scalar_t__ State; } ;
struct TYPE_22__ {TYPE_2__ Control; TYPE_1__ Common; } ;
typedef TYPE_6__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_7__ ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_CONTROL_CONDITIONAL_EXECUTING ;
 scalar_t__ ACPI_CONTROL_PREDICATE_EXECUTING ;
 int ACPI_DB_DISPATCH ;
 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_6__*) ;
 int ACPI_WALK_METHOD ;
 int AE_OK ;




 scalar_t__ AML_INT_NAMEPATH_OP ;
 scalar_t__ AML_SCOPE_OP ;
 int AcpiDsExecBeginControlOp (TYPE_6__*,TYPE_7__*) ;
 int AcpiDsLoad2BeginOp (TYPE_6__*,TYPE_7__**) ;
 int AcpiDsMethodError (int ,TYPE_6__*) ;
 int AcpiDsScopeStackPop (TYPE_6__*) ;
 int AcpiDsScopeStackPush (TYPE_9__*,int ,TYPE_6__*) ;
 scalar_t__ AcpiNsOpensScope (int ) ;
 TYPE_8__* AcpiPsGetOpcodeInfo (scalar_t__) ;
 int AcpiUtGetTypeName (int ) ;
 int DsExecBeginOp ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsExecBeginOp (
    ACPI_WALK_STATE *WalkState,
    ACPI_PARSE_OBJECT **OutOp)
{
    ACPI_PARSE_OBJECT *Op;
    ACPI_STATUS Status = AE_OK;
    UINT32 OpcodeClass;


    ACPI_FUNCTION_TRACE_PTR (DsExecBeginOp, WalkState);


    Op = WalkState->Op;
    if (!Op)
    {
        Status = AcpiDsLoad2BeginOp (WalkState, OutOp);
        if (ACPI_FAILURE (Status))
        {
            goto ErrorExit;
        }

        Op = *OutOp;
        WalkState->Op = Op;
        WalkState->Opcode = Op->Common.AmlOpcode;
        WalkState->OpInfo = AcpiPsGetOpcodeInfo (Op->Common.AmlOpcode);

        if (AcpiNsOpensScope (WalkState->OpInfo->ObjectType))
        {
            ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH,
                "(%s) Popping scope for Op %p\n",
                AcpiUtGetTypeName (WalkState->OpInfo->ObjectType), Op));

            Status = AcpiDsScopeStackPop (WalkState);
            if (ACPI_FAILURE (Status))
            {
                goto ErrorExit;
            }
        }
    }

    if (Op == WalkState->Origin)
    {
        if (OutOp)
        {
            *OutOp = Op;
        }

        return_ACPI_STATUS (AE_OK);
    }






    if ((WalkState->ControlState) &&
        (WalkState->ControlState->Common.State ==
            ACPI_CONTROL_CONDITIONAL_EXECUTING))
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
            "Exec predicate Op=%p State=%p\n",
            Op, WalkState));

        WalkState->ControlState->Common.State =
            ACPI_CONTROL_PREDICATE_EXECUTING;



        WalkState->ControlState->Control.PredicateOp = Op;
    }


    OpcodeClass = WalkState->OpInfo->Class;



    if (Op->Common.AmlOpcode == AML_INT_NAMEPATH_OP)
    {
        OpcodeClass = 128;
    }




    switch (OpcodeClass)
    {
    case 131:

        Status = AcpiDsExecBeginControlOp (WalkState, Op);
        break;

    case 128:

        if (WalkState->WalkType & ACPI_WALK_METHOD)
        {
            if (Op->Common.AmlOpcode != AML_SCOPE_OP)
            {
                Status = AcpiDsLoad2BeginOp (WalkState, ((void*)0));
            }
            else
            {
                Status = AcpiDsScopeStackPush (
                    Op->Named.Node, Op->Named.Node->Type, WalkState);
                if (ACPI_FAILURE (Status))
                {
                    return_ACPI_STATUS (Status);
                }
            }
        }
        break;

    case 129:
    case 130:

        break;

    default:

        break;
    }



    return_ACPI_STATUS (Status);


ErrorExit:
    Status = AcpiDsMethodError (Status, WalkState);
    return_ACPI_STATUS (Status);
}
