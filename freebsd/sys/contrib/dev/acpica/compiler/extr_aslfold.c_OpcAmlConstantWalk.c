
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_15__ {int CompileFlags; } ;
struct TYPE_17__ {TYPE_1__ Asl; } ;
struct TYPE_16__ {int * Params; int * NextOp; } ;
typedef TYPE_2__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_FAILURE (int) ;

 int AE_NO_MEMORY ;


 int ASL_ERROR ;
 int ASL_MSG_CONSTANT_EVALUATION ;
 int ASL_PARSE_OUTPUT ;
 int ASL_WALK_VISIT_DOWNWARD ;
 TYPE_2__* AcpiDsCreateWalkState (int ,int *,int *,int *) ;
 int AcpiDsDeleteWalkState (TYPE_2__*) ;
 scalar_t__ AcpiFormatException (int) ;
 int AslError (int ,int ,TYPE_3__*,char*) ;
 int DbgPrint (int ,char*,scalar_t__) ;
 int OP_COMPILE_TIME_CONST ;
 int OP_IS_TARGET ;
 int OpcAmlCheckForConstant ;
 int OpcUpdateIntegerNode (TYPE_3__*,int ) ;
 int TrSimpleConstantReduction (TYPE_3__*,TYPE_2__*) ;
 int TrTransformToStoreOp (TYPE_3__*,TYPE_2__*) ;
 int TrWalkParseTree (TYPE_3__*,int ,int ,int *,TYPE_2__*) ;

ACPI_STATUS
OpcAmlConstantWalk (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    ACPI_WALK_STATE *WalkState;
    ACPI_STATUS Status = 129;


    if (Op->Asl.CompileFlags == 0)
    {
        return (129);
    }





    if ((!(Op->Asl.CompileFlags & OP_COMPILE_TIME_CONST)) ||
          (Op->Asl.CompileFlags & OP_IS_TARGET))
    {
        return (129);
    }



    WalkState = AcpiDsCreateWalkState (0, ((void*)0), ((void*)0), ((void*)0));
    if (!WalkState)
    {
        return (AE_NO_MEMORY);
    }

    WalkState->NextOp = ((void*)0);
    WalkState->Params = ((void*)0);





    Status = TrWalkParseTree (Op, ASL_WALK_VISIT_DOWNWARD,
        OpcAmlCheckForConstant, ((void*)0), WalkState);





    switch (Status)
    {
    case 129:



        Status = TrSimpleConstantReduction (Op, WalkState);
        break;

    case 130:



        Status = TrTransformToStoreOp (Op, WalkState);
        break;

    case 128:

        AcpiDsDeleteWalkState (WalkState);
        return (129);

    default:
        AcpiDsDeleteWalkState (WalkState);
        break;
    }

    if (ACPI_FAILURE (Status))
    {
        DbgPrint (ASL_PARSE_OUTPUT, "Cannot resolve, %s\n",
            AcpiFormatException (Status));



        AslError (ASL_ERROR, ASL_MSG_CONSTANT_EVALUATION, Op,
            (char *) AcpiFormatException (Status));



        OpcUpdateIntegerNode (Op, 0);
    }

    return (129);
}
