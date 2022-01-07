
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* Parent; } ;
struct TYPE_12__ {TYPE_3__ Common; } ;
struct TYPE_9__ {scalar_t__ ParseOpcode; } ;
struct TYPE_10__ {TYPE_1__ Asl; } ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;


 int ACPI_DB_OPTIMIZATIONS ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (char*) ;
 int ACPI_FUNCTION_TRACE (int (*) (TYPE_4__*,int *,int *,int *,char*,char**)) ;
 int ACPI_IMODE_EXECUTE ;
 scalar_t__ ACPI_IS_ROOT_PREFIX (char) ;
 int ACPI_NS_DONT_OPEN_SCOPE ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AE_NOT_FOUND ;
 int ASL_MSG_COMPILER_INTERNAL ;
 int ASL_MSG_NAME_OPTIMIZATION ;
 int ASL_NO_ABORT ;
 int ASL_OPTIMIZATION ;
 int ASL_WARNING ;
 int * AcpiGbl_RootNode ;
 int AcpiNsExternalizeName (int ,char*,int *,char**) ;
 int AcpiNsLookup (int *,char*,int ,int ,int ,int *,int **) ;
 int AslCoreSubsystemError (TYPE_4__*,int ,char*,int ) ;
 int AslError (int ,int ,TYPE_4__*,char*) ;
 scalar_t__ PARSEOP_DEFINITION_BLOCK ;

__attribute__((used)) static ACPI_STATUS
OptOptimizeNameDeclaration (
    ACPI_PARSE_OBJECT *Op,
    ACPI_WALK_STATE *WalkState,
    ACPI_NAMESPACE_NODE *CurrentNode,
    ACPI_NAMESPACE_NODE *TargetNode,
    char *AmlNameString,
    char **NewPath)
{
    ACPI_STATUS Status;
    char *NewPathExternal;
    ACPI_NAMESPACE_NODE *Node;


    ACPI_FUNCTION_TRACE (OptOptimizeNameDeclaration);


    if (((CurrentNode == AcpiGbl_RootNode) ||
        (Op->Common.Parent->Asl.ParseOpcode == PARSEOP_DEFINITION_BLOCK)) &&
            (ACPI_IS_ROOT_PREFIX (AmlNameString[0])))
    {




        *NewPath = &AmlNameString[1];



        Status = AcpiNsExternalizeName (ACPI_UINT32_MAX, *NewPath,
            ((void*)0), &NewPathExternal);
        if (ACPI_FAILURE (Status))
        {
            AslCoreSubsystemError (Op, Status, "Externalizing NamePath",
                ASL_NO_ABORT);
            return (Status);
        }
        Status = AcpiNsLookup (((void*)0), *NewPath,
            ACPI_TYPE_ANY, ACPI_IMODE_EXECUTE,
            ACPI_NS_DONT_OPEN_SCOPE, WalkState, &(Node));
        if (ACPI_SUCCESS (Status))
        {


            if (Node == TargetNode)
            {


                AslError (ASL_OPTIMIZATION, ASL_MSG_NAME_OPTIMIZATION,
                    Op, NewPathExternal);

                ACPI_DEBUG_PRINT_RAW ((ACPI_DB_OPTIMIZATIONS,
                    "AT ROOT:   %-24s", NewPathExternal));
            }
            else
            {


                Status = AE_NOT_FOUND;
                ACPI_DEBUG_PRINT_RAW ((ACPI_DB_OPTIMIZATIONS,
                    " ***** WRONG NODE"));
                AslError (ASL_WARNING, ASL_MSG_COMPILER_INTERNAL, Op,
                    "Not using optimized name - found wrong node");
            }
        }
        else
        {


            ACPI_DEBUG_PRINT_RAW ((ACPI_DB_OPTIMIZATIONS,
                " ***** NOT FOUND"));
            AslError (ASL_WARNING, ASL_MSG_COMPILER_INTERNAL, Op,
                "Not using optimized name - did not find node");
        }

        ACPI_FREE (NewPathExternal);
        return (Status);
    }



    return (AE_NOT_FOUND);
}
