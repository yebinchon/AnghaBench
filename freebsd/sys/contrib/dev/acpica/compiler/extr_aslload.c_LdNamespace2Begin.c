
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_17__ {int Object; } ;
struct TYPE_14__ {scalar_t__ ParseOpcode; int CompileFlags; char* Namepath; int ExternalName; TYPE_3__* Child; int AmlOpcode; TYPE_4__* Node; int ParseOpName; } ;
struct TYPE_16__ {TYPE_1__ Asl; } ;
struct TYPE_15__ {int ScopeInfo; } ;
typedef scalar_t__ BOOLEAN ;
typedef TYPE_2__ ACPI_WALK_STATE ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;
typedef int ACPI_OBJECT_TYPE ;
typedef TYPE_4__ ACPI_NAMESPACE_NODE ;


 int ACPI_CAST_PTR (int ,TYPE_4__*) ;
 int ACPI_DB_DISPATCH ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FUNCTION_NAME (scalar_t__ (*) (TYPE_3__*,int ,void*)) ;
 int ACPI_IMODE_EXECUTE ;
 int ACPI_IMODE_LOAD_PASS1 ;
 scalar_t__ ACPI_NAMESEG_SIZE ;
 int ACPI_NS_DONT_OPEN_SCOPE ;
 int ACPI_NS_NO_UPSEARCH ;
 int ACPI_NS_SEARCH_PARENT ;
 int ACPI_OPERAND_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_TYPE_LOCAL_RESOURCE ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ AE_OK ;
 int ASL_ERROR ;
 int ASL_MSG_NAMEPATH_NOT_EXIST ;
 int ASL_MSG_NOT_FOUND ;
 scalar_t__ AcpiDsScopeStackPush (TYPE_4__*,int ,TYPE_2__*) ;
 scalar_t__ AcpiNsLookup (int ,char*,int ,int ,int,TYPE_2__*,TYPE_4__**) ;
 scalar_t__ AcpiNsOpensScope (int ) ;
 int AslCoreSubsystemError (TYPE_3__*,scalar_t__,char*,scalar_t__) ;
 int AslError (int ,int ,TYPE_3__*,int ) ;
 int AslMapNamedOpcodeToDataType (int ) ;
 scalar_t__ FALSE ;
 int OP_IS_RESOURCE_DESC ;
 scalar_t__ PARSEOP_ALIAS ;
 scalar_t__ PARSEOP_DEFAULT_ARG ;
 scalar_t__ PARSEOP_NAME ;
 scalar_t__ TRUE ;
 scalar_t__ UtInternalizeName (int ,char**) ;
 int return_ACPI_STATUS (scalar_t__) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static ACPI_STATUS
LdNamespace2Begin (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    ACPI_WALK_STATE *WalkState = (ACPI_WALK_STATE *) Context;
    ACPI_STATUS Status;
    ACPI_NAMESPACE_NODE *Node;
    ACPI_OBJECT_TYPE ObjectType;
    BOOLEAN ForceNewScope = FALSE;
    ACPI_PARSE_OBJECT *Arg;
    char *Path;
    ACPI_NAMESPACE_NODE *TargetNode;


    ACPI_FUNCTION_NAME (LdNamespace2Begin);
    ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH, "Op %p [%s]\n",
        Op, Op->Asl.ParseOpName));




    Node = Op->Asl.Node;
    if (!Node)
    {
        return (AE_OK);
    }



    if ((Op->Asl.ParseOpcode == PARSEOP_DEFAULT_ARG) &&
        (Op->Asl.CompileFlags == OP_IS_RESOURCE_DESC))
    {
        ObjectType = ACPI_TYPE_LOCAL_RESOURCE;
    }
    else
    {
        ObjectType = AslMapNamedOpcodeToDataType (Op->Asl.AmlOpcode);
    }



    if (Op->Asl.ParseOpcode == PARSEOP_NAME)
    {
        if (Op->Asl.CompileFlags & OP_IS_RESOURCE_DESC)
        {
            ForceNewScope = TRUE;
        }
    }



    if (ForceNewScope || AcpiNsOpensScope (ObjectType))
    {
        Status = AcpiDsScopeStackPush (Node, ObjectType, WalkState);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }
    }

    if (Op->Asl.ParseOpcode == PARSEOP_ALIAS)
    {




        Arg = Op->Asl.Child;



        Path = Arg->Asl.Namepath;
        if (!Path)
        {
            Status = UtInternalizeName (Arg->Asl.ExternalName, &Path);
            if (ACPI_FAILURE (Status))
            {
                return (Status);
            }
        }



        Status = AcpiNsLookup (WalkState->ScopeInfo, Path, ACPI_TYPE_ANY,
            ACPI_IMODE_EXECUTE, ACPI_NS_SEARCH_PARENT | ACPI_NS_DONT_OPEN_SCOPE,
            WalkState, &TargetNode);
        if (ACPI_FAILURE (Status))
        {
            if (Status == AE_NOT_FOUND)
            {


                if (strlen (Arg->Asl.ExternalName) == ACPI_NAMESEG_SIZE)
                {
                    AslError (ASL_ERROR, ASL_MSG_NOT_FOUND, Op,
                        Arg->Asl.ExternalName);
                }
                else
                {
                    AslError (ASL_ERROR, ASL_MSG_NAMEPATH_NOT_EXIST, Op,
                        Arg->Asl.ExternalName);
                }
                return (Status);

            }

            AslCoreSubsystemError (Op, Status,
                "Failure from namespace lookup", FALSE);
            return (AE_OK);
        }



        Node->Object = ACPI_CAST_PTR (ACPI_OPERAND_OBJECT, TargetNode);
    }

    return (AE_OK);
}
