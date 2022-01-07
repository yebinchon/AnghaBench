
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_19__ {int ParseOpcode; char* Namepath; int CompileFlags; char* ExternalName; TYPE_2__* Parent; TYPE_6__* Next; int ParentMethod; } ;
struct TYPE_22__ {TYPE_3__ Asl; } ;
struct TYPE_21__ {TYPE_4__* MethodStack; } ;
struct TYPE_20__ {int Op; int NumReturnWithValue; int NumReturnNoValue; struct TYPE_20__* Next; } ;
struct TYPE_17__ {int CompileFlags; } ;
struct TYPE_18__ {TYPE_1__ Asl; } ;
typedef TYPE_4__ ASL_METHOD_INFO ;
typedef TYPE_5__ ASL_ANALYSIS_WALK_INFO ;
typedef int ACPI_STATUS ;
typedef TYPE_6__ ACPI_PARSE_OBJECT ;


 int ACPI_FREE (TYPE_4__*) ;
 int AE_AML_INTERNAL ;
 int AE_OK ;
 int ASL_ERROR ;
 int ASL_MSG_COMPILER_INTERNAL ;
 int ASL_MSG_RETURN_TYPES ;
 int ASL_MSG_UNREACHABLE_CODE ;
 int ASL_WARNING ;
 int AnLastStatementIsReturn (TYPE_6__*) ;
 int ApCheckForGpeNameConflict (TYPE_6__*) ;
 int ApCheckForPredefinedMethod (TYPE_6__*,TYPE_4__*) ;
 int ApCheckPredefinedReturnValue (TYPE_6__*,TYPE_4__*) ;
 int ApCheckRegMethod (TYPE_6__*) ;
 int AslError (int ,int ,TYPE_6__*,char*) ;
 int CmCleanupAndExit () ;
 int OP_HAS_NO_EXIT ;
 int OP_IF_HAS_NO_EXIT ;
 int OP_METHOD_NO_RETVAL ;
 int OP_METHOD_SOME_NO_RETVAL ;





 int printf (char*,char*) ;

ACPI_STATUS
MtMethodAnalysisWalkEnd (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    ASL_ANALYSIS_WALK_INFO *WalkInfo = (ASL_ANALYSIS_WALK_INFO *) Context;
    ASL_METHOD_INFO *MethodInfo = WalkInfo->MethodStack;


    switch (Op->Asl.ParseOpcode)
    {
    case 130:
    case 128:

        if (!MethodInfo)
        {
            printf ("No method info for method! [%s]\n", Op->Asl.Namepath);
            AslError (ASL_ERROR, ASL_MSG_COMPILER_INTERNAL, Op,
                "No method info for this method");

            CmCleanupAndExit ();
            return (AE_AML_INTERNAL);
        }
        break;

    default:

        break;
    }

    switch (Op->Asl.ParseOpcode)
    {
    case 130:

        WalkInfo->MethodStack = MethodInfo->Next;






        if ((!AnLastStatementIsReturn (Op)) &&
            (!(Op->Asl.CompileFlags & OP_HAS_NO_EXIT)))
        {




            MethodInfo->NumReturnNoValue++;
        }






        if (MethodInfo->NumReturnNoValue &&
            MethodInfo->NumReturnWithValue)
        {
            AslError (ASL_WARNING, ASL_MSG_RETURN_TYPES, Op,
                Op->Asl.ExternalName);
        }
        if (MethodInfo->NumReturnNoValue)
        {
            if (MethodInfo->NumReturnWithValue)
            {
                Op->Asl.CompileFlags |= OP_METHOD_SOME_NO_RETVAL;
            }
            else
            {
                Op->Asl.CompileFlags |= OP_METHOD_NO_RETVAL;
            }
        }






        if (ApCheckForPredefinedMethod (Op, MethodInfo))
        {


            ApCheckForGpeNameConflict (Op);





            ApCheckRegMethod (Op);
        }

        ACPI_FREE (MethodInfo);
        break;

    case 129:



        ApCheckForGpeNameConflict (Op);
        break;

    case 128:





        ApCheckPredefinedReturnValue (Op, MethodInfo);





        Op->Asl.Parent->Asl.CompileFlags |= OP_HAS_NO_EXIT;



        Op->Asl.ParentMethod = MethodInfo->Op;






        if (Op->Asl.Next)
        {
            AslError (ASL_WARNING, ASL_MSG_UNREACHABLE_CODE,
                Op->Asl.Next, ((void*)0));
        }
        break;

    case 131:

        if ((Op->Asl.CompileFlags & OP_HAS_NO_EXIT) &&
            (Op->Asl.Next) &&
            (Op->Asl.Next->Asl.ParseOpcode == 132))
        {





            Op->Asl.Next->Asl.CompileFlags |= OP_IF_HAS_NO_EXIT;
        }
        break;

    case 132:

        if ((Op->Asl.CompileFlags & OP_HAS_NO_EXIT) &&
            (Op->Asl.CompileFlags & OP_IF_HAS_NO_EXIT))
        {




            Op->Asl.Parent->Asl.CompileFlags |= OP_HAS_NO_EXIT;
        }
        break;


    default:

        if ((Op->Asl.CompileFlags & OP_HAS_NO_EXIT) &&
            (Op->Asl.Parent))
        {


            Op->Asl.Parent->Asl.CompileFlags |= OP_HAS_NO_EXIT;
        }
        break;
    }

    return (AE_OK);
}
