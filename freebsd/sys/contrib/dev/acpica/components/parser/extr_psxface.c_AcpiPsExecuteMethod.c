
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_18__ ;
typedef struct TYPE_19__ TYPE_13__ ;


typedef int UINT64 ;
struct TYPE_25__ {scalar_t__ ReturnObject; TYPE_18__* ObjDesc; int FullPathname; int PassNumber; TYPE_13__* Node; } ;
struct TYPE_24__ {int ImplicitReturnObj; int MethodDesc; int ParserState; scalar_t__ ReturnDesc; int ParseFlags; int MethodIsNested; int MethodPathname; } ;
struct TYPE_22__ {int (* Implementation ) (TYPE_4__*) ;} ;
struct TYPE_23__ {int InfoFlags; TYPE_2__ Dispatch; int AmlLength; int AmlStart; int OwnerId; } ;
struct TYPE_21__ {int Ascii; } ;
struct TYPE_20__ {TYPE_3__ Method; } ;
struct TYPE_19__ {TYPE_1__ Name; } ;
typedef TYPE_4__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_PARSE_OBJECT ;
typedef TYPE_5__ ACPI_EVALUATE_INFO ;


 int ACPI_DB_PARSE ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DUMP_STACK_ENTRY (scalar_t__) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IMODE_EXECUTE ;
 int ACPI_METHOD_INTERNAL_ONLY ;
 int ACPI_METHOD_MODULE_LEVEL ;
 int ACPI_PARSE_MODULE_LEVEL ;
 int AE_CTRL_RETURN_VALUE ;
 int AE_NO_MEMORY ;
 int AE_NULL_ENTRY ;
 int AcpiDsBeginMethodExecution (TYPE_13__*,TYPE_18__*,int *) ;
 TYPE_4__* AcpiDsCreateWalkState (int ,int *,int *,int *) ;
 int AcpiDsDeleteWalkState (TYPE_4__*) ;
 int AcpiDsInitAmlWalk (TYPE_4__*,int *,TYPE_13__*,int ,int ,TYPE_5__*,int ) ;
 int AcpiDsScopeStackClear (TYPE_4__*) ;
 int AcpiDsTerminateControlMethod (int ,TYPE_4__*) ;
 scalar_t__ AcpiGbl_EnableInterpreterSlack ;
 int AcpiPsCleanupScope (int *) ;
 int * AcpiPsCreateScopeOp (int ) ;
 int AcpiPsDeleteParseTree (int *) ;
 int AcpiPsParseAml (TYPE_4__*) ;
 int AcpiPsUpdateParameterList (TYPE_5__*,int ) ;
 int AcpiTbCheckDsdtHeader () ;
 int AcpiUtCreateIntegerObject (int ) ;
 int FALSE ;
 int PsExecuteMethod ;
 int REF_DECREMENT ;
 int REF_INCREMENT ;
 int return_ACPI_STATUS (int ) ;
 int stub1 (TYPE_4__*) ;

ACPI_STATUS
AcpiPsExecuteMethod (
    ACPI_EVALUATE_INFO *Info)
{
    ACPI_STATUS Status;
    ACPI_PARSE_OBJECT *Op;
    ACPI_WALK_STATE *WalkState;


    ACPI_FUNCTION_TRACE (PsExecuteMethod);




    AcpiTbCheckDsdtHeader ();



    if (!Info || !Info->Node)
    {
        return_ACPI_STATUS (AE_NULL_ENTRY);
    }



    Status = AcpiDsBeginMethodExecution (Info->Node, Info->ObjDesc, ((void*)0));
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }




    AcpiPsUpdateParameterList (Info, REF_INCREMENT);




    ACPI_DEBUG_PRINT ((ACPI_DB_PARSE,
        "**** Begin Method Parse/Execute [%4.4s] **** Node=%p Obj=%p\n",
        Info->Node->Name.Ascii, Info->Node, Info->ObjDesc));



    Op = AcpiPsCreateScopeOp (Info->ObjDesc->Method.AmlStart);
    if (!Op)
    {
        Status = AE_NO_MEMORY;
        goto Cleanup;
    }



    Info->PassNumber = ACPI_IMODE_EXECUTE;
    WalkState = AcpiDsCreateWalkState (
        Info->ObjDesc->Method.OwnerId, ((void*)0), ((void*)0), ((void*)0));
    if (!WalkState)
    {
        Status = AE_NO_MEMORY;
        goto Cleanup;
    }

    Status = AcpiDsInitAmlWalk (WalkState, Op, Info->Node,
        Info->ObjDesc->Method.AmlStart,
        Info->ObjDesc->Method.AmlLength, Info, Info->PassNumber);
    if (ACPI_FAILURE (Status))
    {
        AcpiDsDeleteWalkState (WalkState);
        goto Cleanup;
    }

    WalkState->MethodPathname = Info->FullPathname;
    WalkState->MethodIsNested = FALSE;

    if (Info->ObjDesc->Method.InfoFlags & ACPI_METHOD_MODULE_LEVEL)
    {
        WalkState->ParseFlags |= ACPI_PARSE_MODULE_LEVEL;
    }



    if (Info->ObjDesc->Method.InfoFlags & ACPI_METHOD_INTERNAL_ONLY)
    {
        Status = Info->ObjDesc->Method.Dispatch.Implementation (WalkState);
        Info->ReturnObject = WalkState->ReturnDesc;



        AcpiDsScopeStackClear (WalkState);
        AcpiPsCleanupScope (&WalkState->ParserState);
        AcpiDsTerminateControlMethod (WalkState->MethodDesc, WalkState);
        AcpiDsDeleteWalkState (WalkState);
        goto Cleanup;
    }





    if (AcpiGbl_EnableInterpreterSlack)
    {
        WalkState->ImplicitReturnObj =
            AcpiUtCreateIntegerObject ((UINT64) 0);
        if (!WalkState->ImplicitReturnObj)
        {
            Status = AE_NO_MEMORY;
            AcpiDsDeleteWalkState (WalkState);
            goto Cleanup;
        }
    }



    Status = AcpiPsParseAml (WalkState);



Cleanup:
    AcpiPsDeleteParseTree (Op);



    AcpiPsUpdateParameterList (Info, REF_DECREMENT);



    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }





    if (Info->ReturnObject)
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_PARSE, "Method returned ObjDesc=%p\n",
            Info->ReturnObject));
        ACPI_DUMP_STACK_ENTRY (Info->ReturnObject);

        Status = AE_CTRL_RETURN_VALUE;
    }

    return_ACPI_STATUS (Status);
}
