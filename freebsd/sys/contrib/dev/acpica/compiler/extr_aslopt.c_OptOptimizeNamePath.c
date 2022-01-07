
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_10__ ;


typedef int UINT32 ;
struct TYPE_32__ {char* String; } ;
struct TYPE_33__ {int CompileFlags; scalar_t__ AmlOpcode; scalar_t__ AmlLength; TYPE_6__ Value; TYPE_9__* Next; TYPE_9__* Child; int * Node; TYPE_9__* Parent; int LogicalLineNumber; } ;
struct TYPE_29__ {int AmlOpcode; TYPE_2__* Parent; } ;
struct TYPE_35__ {TYPE_7__ Asl; TYPE_3__ Common; } ;
struct TYPE_34__ {TYPE_5__* ScopeInfo; } ;
struct TYPE_30__ {int * Node; } ;
struct TYPE_31__ {TYPE_4__ Scope; } ;
struct TYPE_27__ {int AmlOpcode; } ;
struct TYPE_28__ {TYPE_1__ Common; } ;
struct TYPE_26__ {char* Pointer; void* Length; } ;
typedef TYPE_8__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_SIZE ;
typedef TYPE_9__ ACPI_PARSE_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;
typedef TYPE_10__ ACPI_BUFFER ;


 void* ACPI_ALLOCATE_LOCAL_BUFFER ;
 int ACPI_DB_OPTIMIZATIONS ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (char*) ;
 int ACPI_FUNCTION_TRACE (void (*) (TYPE_9__*,int,TYPE_8__*,char*,int *)) ;
 scalar_t__ ACPI_NAMESEG_SIZE ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_UINT32_MAX ;
 scalar_t__ AML_ALIAS_OP ;
 int AML_CREATE ;
 int AML_NAMED ;
 int ASL_NO_ABORT ;
 int * AcpiGbl_RootNode ;
 int AcpiNsExternalizeName (int ,char*,int *,char**) ;
 int AcpiNsHandleToPathname (int *,TYPE_10__*,int ) ;
 int AcpiPsGetOpcodeName (int ) ;
 int AslCoreSubsystemError (TYPE_9__*,int ,char*,int ) ;
 int AslGbl_ReferenceOptimizationFlag ;
 int FALSE ;
 int OP_IS_NAME_DECLARATION ;
 int OptBuildShortestPath (TYPE_9__*,TYPE_8__*,int *,int *,TYPE_10__*,TYPE_10__*,scalar_t__,int,char**) ;
 int OptOptimizeNameDeclaration (TYPE_9__*,TYPE_8__*,int *,int *,char*,char**) ;
 int OptSearchToRoot (TYPE_9__*,TYPE_8__*,int *,int *,TYPE_10__*,char**) ;
 int OptTotal ;
 int return_VOID ;
 scalar_t__ strlen (char*) ;

void
OptOptimizeNamePath (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Flags,
    ACPI_WALK_STATE *WalkState,
    char *AmlNameString,
    ACPI_NAMESPACE_NODE *TargetNode)
{
    ACPI_STATUS Status;
    ACPI_BUFFER TargetPath;
    ACPI_BUFFER CurrentPath;
    ACPI_SIZE AmlNameStringLength;
    ACPI_NAMESPACE_NODE *CurrentNode;
    char *ExternalNameString;
    char *NewPath = ((void*)0);
    ACPI_SIZE HowMuchShorter;
    ACPI_PARSE_OBJECT *NextOp;


    ACPI_FUNCTION_TRACE (OptOptimizeNamePath);




    if (!AslGbl_ReferenceOptimizationFlag)
    {
        return_VOID;
    }



    if (!TargetNode || !WalkState || !AmlNameString || !Op->Common.Parent)
    {
        return_VOID;
    }

    ACPI_DEBUG_PRINT_RAW ((ACPI_DB_OPTIMIZATIONS,
        "PATH OPTIMIZE: Line %5d ParentOp [%12.12s] ThisOp [%12.12s] ",
        Op->Asl.LogicalLineNumber,
        AcpiPsGetOpcodeName (Op->Common.Parent->Common.AmlOpcode),
        AcpiPsGetOpcodeName (Op->Common.AmlOpcode)));

    if (!(Flags & (AML_NAMED | AML_CREATE)))
    {
        if (Op->Asl.CompileFlags & OP_IS_NAME_DECLARATION)
        {


            ACPI_DEBUG_PRINT_RAW ((ACPI_DB_OPTIMIZATIONS,
                "******* NAME DECLARATION\n"));
            return_VOID;
        }
    }





    AmlNameStringLength = strlen (AmlNameString);
    if (AmlNameStringLength <= ACPI_NAMESEG_SIZE)
    {
        ACPI_DEBUG_PRINT_RAW ((ACPI_DB_OPTIMIZATIONS,
            "NAMESEG %4.4s\n", AmlNameString));
        return_VOID;
    }






    CurrentNode = AcpiGbl_RootNode;
    if (WalkState->ScopeInfo)
    {
        CurrentNode = WalkState->ScopeInfo->Scope.Node;
    }

    if (Flags & (AML_NAMED | AML_CREATE))
    {


        ACPI_DEBUG_PRINT_RAW ((ACPI_DB_OPTIMIZATIONS, "NAME\n"));







        NextOp = Op->Asl.Parent;
        while (NextOp && (!NextOp->Asl.Node))
        {
            NextOp = NextOp->Asl.Parent;
        }

        if (NextOp && NextOp->Asl.Node)
        {
            CurrentNode = NextOp->Asl.Node;
        }
        else
        {
            CurrentNode = AcpiGbl_RootNode;
        }
    }
    else
    {


        ACPI_DEBUG_PRINT_RAW ((ACPI_DB_OPTIMIZATIONS, "REFERENCE\n"));
    }






    TargetPath.Length = ACPI_ALLOCATE_LOCAL_BUFFER;
    Status = AcpiNsHandleToPathname (TargetNode, &TargetPath, FALSE);
    if (ACPI_FAILURE (Status))
    {
        AslCoreSubsystemError (Op, Status, "Getting Target NamePath",
            ASL_NO_ABORT);
        return_VOID;
    }

    TargetPath.Length--;



    CurrentPath.Length = ACPI_ALLOCATE_LOCAL_BUFFER;
    Status = AcpiNsHandleToPathname (CurrentNode, &CurrentPath, FALSE);
    if (ACPI_FAILURE (Status))
    {
        AslCoreSubsystemError (Op, Status, "Getting Current NamePath",
            ASL_NO_ABORT);
        return_VOID;
    }

    CurrentPath.Length--;



    Status = AcpiNsExternalizeName (ACPI_UINT32_MAX, AmlNameString,
        ((void*)0), &ExternalNameString);
    if (ACPI_FAILURE (Status))
    {
        AslCoreSubsystemError (Op, Status, "Externalizing NamePath",
            ASL_NO_ABORT);
        return_VOID;
    }

    ACPI_DEBUG_PRINT_RAW ((ACPI_DB_OPTIMIZATIONS,
        "CURRENT SCOPE: (%2u) %-37s FULL PATH TO NAME: (%2u) %-32s ACTUAL AML:%-32s\n",
        (UINT32) CurrentPath.Length, (char *) CurrentPath.Pointer,
        (UINT32) TargetPath.Length, (char *) TargetPath.Pointer,
        ExternalNameString));

    ACPI_FREE (ExternalNameString);




    if (Flags & (AML_NAMED | AML_CREATE))
    {




        Status = OptOptimizeNameDeclaration (Op, WalkState, CurrentNode,
            TargetNode, AmlNameString, &NewPath);
        if (ACPI_FAILURE (Status))
        {




            Status = OptBuildShortestPath (Op, WalkState, CurrentNode,
                TargetNode, &CurrentPath, &TargetPath,
                AmlNameStringLength, 1, &NewPath);
        }
    }
    else
    {






        Status = OptSearchToRoot (Op, WalkState, CurrentNode,
            TargetNode, &TargetPath, &NewPath);
        if (ACPI_FAILURE (Status))
        {




            Status = OptBuildShortestPath (Op, WalkState, CurrentNode,
                TargetNode, &CurrentPath, &TargetPath,
                AmlNameStringLength, 0, &NewPath);
        }
    }





    if (ACPI_SUCCESS (Status))
    {
        HowMuchShorter = (AmlNameStringLength - strlen (NewPath));
        OptTotal += HowMuchShorter;

        ACPI_DEBUG_PRINT_RAW ((ACPI_DB_OPTIMIZATIONS,
            " REDUCED BY %2u (TOTAL SAVED %2u)",
            (UINT32) HowMuchShorter, OptTotal));

        if (Flags & AML_NAMED)
        {
            if (Op->Asl.AmlOpcode == AML_ALIAS_OP)
            {




                Op->Asl.Child->Asl.Next->Asl.Value.String = NewPath;
                Op->Asl.Child->Asl.Next->Asl.AmlLength = strlen (NewPath);
            }
            else
            {
                Op->Asl.Child->Asl.Value.String = NewPath;
                Op->Asl.Child->Asl.AmlLength = strlen (NewPath);
            }
        }
        else if (Flags & AML_CREATE)
        {


            NextOp = Op->Asl.Child;
            while (!(NextOp->Asl.CompileFlags & OP_IS_NAME_DECLARATION))
            {
                NextOp = NextOp->Asl.Next;
            }


            NextOp->Asl.Value.String = NewPath;
            NextOp->Asl.AmlLength = strlen (NewPath);
        }
        else
        {


            Op->Asl.Value.String = NewPath;
            Op->Asl.AmlLength = strlen (NewPath);
        }
    }
    else
    {
        ACPI_DEBUG_PRINT_RAW ((ACPI_DB_OPTIMIZATIONS, " ALREADY OPTIMAL"));
    }



    ACPI_FREE (TargetPath.Pointer);
    ACPI_FREE (CurrentPath.Pointer);

    ACPI_DEBUG_PRINT_RAW ((ACPI_DB_OPTIMIZATIONS, "\n"));
    return_VOID;
}
