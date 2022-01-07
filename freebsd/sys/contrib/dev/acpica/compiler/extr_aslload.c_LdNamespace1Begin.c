
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
struct TYPE_31__ {int Flags; scalar_t__ Type; int Value; TYPE_5__* Op; } ;
struct TYPE_30__ {scalar_t__ Class; } ;
struct TYPE_25__ {char* Name; scalar_t__ Integer; } ;
struct TYPE_27__ {int AmlOpcode; char* ExternalName; int ParseOpcode; int CompileFlags; char* Namepath; int AcpiBtype; scalar_t__ Extra; TYPE_7__* Node; TYPE_5__* Parent; TYPE_1__ Value; TYPE_5__* Next; TYPE_5__* Child; int ParseOpName; } ;
struct TYPE_29__ {TYPE_3__ Asl; } ;
struct TYPE_28__ {int ScopeInfo; TYPE_2__* OpInfo; } ;
struct TYPE_26__ {int Flags; } ;
typedef scalar_t__ BOOLEAN ;
typedef TYPE_4__ ACPI_WALK_STATE ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_5__ ACPI_PARSE_OBJECT ;
typedef TYPE_6__ ACPI_OPCODE_INFO ;
typedef scalar_t__ ACPI_OBJECT_TYPE ;
typedef TYPE_7__ ACPI_NAMESPACE_NODE ;


 int ACPI_COMPARE_NAMESEG (int ,char*) ;
 int ACPI_DB_DISPATCH ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FUNCTION_NAME (scalar_t__ (*) (TYPE_5__*,int,void*)) ;
 int ACPI_IMODE_EXECUTE ;
 int ACPI_IMODE_LOAD_PASS1 ;
 int ACPI_NAMESEG_SIZE ;
 int ACPI_NS_DONT_OPEN_SCOPE ;
 int ACPI_NS_ERROR_IF_FOUND ;
 int ACPI_NS_EXTERNAL ;
 int ACPI_NS_NO_UPSEARCH ;
 int ACPI_NS_PREFIX_MUST_EXIST ;
 int ACPI_NS_SEARCH_PARENT ;
 scalar_t__ ACPI_TYPE_ANY ;



 int ACPI_TYPE_LOCAL_REGION_FIELD ;



 int ACPI_TYPE_REGION ;


 scalar_t__ AE_ALREADY_EXISTS ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ AE_OK ;

 scalar_t__ AML_CLASS_NAMED_OBJECT ;
 int AML_CREATE ;
 int AML_EXTERNAL_OP ;



 int AML_INT_NAMEPATH_OP ;
 int AML_NAMED ;
 int ANOBJ_IS_EXTERNAL ;
 int ASL_ERROR ;
 int ASL_EXTERNAL_METHOD ;
 int ASL_MSG_CROSS_TABLE_SCOPE ;
 int ASL_MSG_FOUND_HERE ;
 int ASL_MSG_NAMEPATH_NOT_EXIST ;
 int ASL_MSG_NAME_EXISTS ;
 int ASL_MSG_NOT_FOUND ;
 int ASL_MSG_SCOPE_TYPE ;
 int ASL_REMARK ;
 scalar_t__ AcpiDsScopeStackPush (TYPE_7__*,int const,TYPE_4__*) ;
 TYPE_7__* AcpiGbl_RootNode ;
 scalar_t__ AcpiNsLookup (int ,char*,scalar_t__,int ,int,TYPE_4__*,TYPE_7__**) ;
 scalar_t__ AcpiNsOpensScope (scalar_t__) ;
 void* AcpiPsGetOpcodeInfo (int) ;
 char* AcpiUtGetTypeName (scalar_t__) ;
 int AslCoreSubsystemError (TYPE_5__*,scalar_t__,char*,scalar_t__) ;
 int AslDualParseOpError (int ,int ,TYPE_5__*,char*,int ,TYPE_5__*,char*) ;
 int AslError (int ,int ,TYPE_5__*,char*) ;
 char* AslGbl_MsgBuffer ;
 int AslGbl_TableSignature ;
 scalar_t__ AslMapNamedOpcodeToDataType (int) ;
 scalar_t__ FALSE ;
 int LdCheckSpecialNames (TYPE_7__*,TYPE_5__*) ;
 scalar_t__ LdLoadFieldElements (int ,TYPE_5__*,TYPE_4__*) ;
 scalar_t__ LdLoadResourceElements (TYPE_5__*,TYPE_4__*) ;
 int OP_IS_RESOURCE_DESC ;
 int OP_NOT_FOUND_DURING_LOAD ;


 int PARSEOP_METHOD ;

 int PARSEOP_NAMESEG ;
 int PARSEOP_NAMESTRING ;
 scalar_t__ PARSEOP_PACKAGE ;

 scalar_t__ PARSEOP_VAR_PACKAGE ;
 scalar_t__ TRUE ;
 int return_ACPI_STATUS (scalar_t__) ;
 int sprintf (char*,char*,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static ACPI_STATUS
LdNamespace1Begin (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    ACPI_WALK_STATE *WalkState = (ACPI_WALK_STATE *) Context;
    ACPI_NAMESPACE_NODE *Node;
    ACPI_PARSE_OBJECT *MethodOp;
    ACPI_STATUS Status;
    ACPI_OBJECT_TYPE ObjectType;
    ACPI_OBJECT_TYPE ActualObjectType = ACPI_TYPE_ANY;
    char *Path;
    UINT32 Flags = ACPI_NS_NO_UPSEARCH;
    ACPI_PARSE_OBJECT *Arg;
    UINT32 i;
    BOOLEAN ForceNewScope = FALSE;
    const ACPI_OPCODE_INFO *OpInfo;
    ACPI_PARSE_OBJECT *ParentOp;


    ACPI_FUNCTION_NAME (LdNamespace1Begin);


    ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH, "Op %p [%s]\n",
        Op, Op->Asl.ParseOpName));





    switch (Op->Asl.AmlOpcode)
    {
    case 133:

        Status = LdLoadFieldElements (ACPI_TYPE_LOCAL_REGION_FIELD, Op, WalkState);
        return (Status);

    case 135:
    case 134:

        Status = LdLoadFieldElements (ACPI_TYPE_REGION, Op, WalkState);
        return (Status);

    case 132:

        if (Op->Asl.Child->Asl.AmlOpcode != AML_INT_NAMEPATH_OP)
        {
            break;
        }

        Arg = Op->Asl.Child;
        Status = AcpiNsLookup (WalkState->ScopeInfo, Arg->Asl.ExternalName,
            ACPI_TYPE_ANY, ACPI_IMODE_EXECUTE, ACPI_NS_SEARCH_PARENT,
            WalkState, &Node);
        if (ACPI_FAILURE (Status))
        {
            break;
        }

        break;

    default:



        break;
    }



    if (Op->Asl.Node)
    {
        return (AE_OK);
    }



    if ((Op->Asl.ParseOpcode == PARSEOP_NAMESEG) ||
        (Op->Asl.ParseOpcode == PARSEOP_NAMESTRING))
    {





        ParentOp = Op->Asl.Parent;
        OpInfo = AcpiPsGetOpcodeInfo (ParentOp->Asl.AmlOpcode);







        if (OpInfo->Class == AML_CLASS_NAMED_OBJECT)
        {
            return (AE_OK);
        }
        Status = AcpiNsLookup (WalkState->ScopeInfo,
            Op->Asl.Value.Name, ACPI_TYPE_ANY, ACPI_IMODE_EXECUTE,
            ACPI_NS_SEARCH_PARENT | ACPI_NS_DONT_OPEN_SCOPE,
            WalkState, &Node);
        if (Status == AE_NOT_FOUND)
        {
            if ((ParentOp->Asl.ParseOpcode != PARSEOP_PACKAGE) &&
                (ParentOp->Asl.ParseOpcode != PARSEOP_VAR_PACKAGE))
            {
                Op->Asl.CompileFlags |= OP_NOT_FOUND_DURING_LOAD;
            }

            return (AE_OK);
        }

        return (Status);
    }

    Path = Op->Asl.Namepath;
    if (!Path)
    {
        return (AE_OK);
    }



    switch (Op->Asl.ParseOpcode)
    {
    case 129:

        Arg = Op->Asl.Child;
        Arg = Arg->Asl.Next;






        if (Op->Asl.CompileFlags & OP_IS_RESOURCE_DESC)
        {
            ForceNewScope = TRUE;
        }





        ObjectType = 1;
        for (i = 1; i < Arg->Asl.AcpiBtype; i *= 2)
        {
            ObjectType++;
        }
        break;

    case 130:







        ActualObjectType = (UINT8) Op->Asl.Child->Asl.Next->Asl.Value.Integer;
        ObjectType = ACPI_TYPE_ANY;
        Flags |= ACPI_NS_EXTERNAL;
        break;

    case 131:

        if (Op->Asl.CompileFlags == OP_IS_RESOURCE_DESC)
        {
            Status = LdLoadResourceElements (Op, WalkState);
            return_ACPI_STATUS (Status);
        }

        ObjectType = AslMapNamedOpcodeToDataType (Op->Asl.AmlOpcode);
        break;

    case 128:






        Status = AcpiNsLookup (WalkState->ScopeInfo, Path, ACPI_TYPE_ANY,
            ACPI_IMODE_EXECUTE, ACPI_NS_SEARCH_PARENT, WalkState, &Node);
        if (ACPI_FAILURE (Status))
        {
            if (Status == AE_NOT_FOUND)
            {


                Status = AcpiNsLookup (WalkState->ScopeInfo, Path,
                    140, ACPI_IMODE_LOAD_PASS1,
                    Flags, WalkState, &Node);
                if (ACPI_FAILURE (Status))
                {
                    return_ACPI_STATUS (Status);
                }



                if (strlen (Op->Asl.ExternalName) == ACPI_NAMESEG_SIZE)
                {
                    AslError (ASL_ERROR, ASL_MSG_NOT_FOUND, Op,
                        Op->Asl.ExternalName);
                }
                else
                {
                    AslError (ASL_ERROR, ASL_MSG_NAMEPATH_NOT_EXIST, Op,
                        Op->Asl.ExternalName);
                }

                goto FinishNode;
            }

            AslCoreSubsystemError (Op, Status,
                "Failure from namespace lookup", FALSE);

            return_ACPI_STATUS (Status);
        }
        else
        {







            if ((Node->Flags & ANOBJ_IS_EXTERNAL) &&
                (ACPI_COMPARE_NAMESEG (AslGbl_TableSignature, "DSDT")))
            {


                MethodOp = Op->Asl.Parent;
                while (MethodOp &&
                      (MethodOp->Asl.ParseOpcode != PARSEOP_METHOD))
                {
                    MethodOp = MethodOp->Asl.Parent;
                }

                if (!MethodOp)
                {


                    AslError (ASL_ERROR, ASL_MSG_CROSS_TABLE_SCOPE, Op, ((void*)0));
                }
            }
        }



        switch (Node->Type)
        {
        case 140:
        case 142:
        case 139:
        case 138:
        case 136:


            break;

        case 141:
        case 137:
        case 143:
            sprintf (AslGbl_MsgBuffer, "%s [%s], changing type to [Scope]",
                Op->Asl.ExternalName, AcpiUtGetTypeName (Node->Type));
            AslError (ASL_REMARK, ASL_MSG_SCOPE_TYPE, Op, AslGbl_MsgBuffer);



            Node->Type = 140;
            Status = AcpiDsScopeStackPush (Node, 140,
                WalkState);
            if (ACPI_FAILURE (Status))
            {
                return_ACPI_STATUS (Status);
            }
            break;

        default:



            sprintf (AslGbl_MsgBuffer, "%s [%s]", Op->Asl.ExternalName,
                AcpiUtGetTypeName (Node->Type));
            AslError (ASL_ERROR, ASL_MSG_SCOPE_TYPE, Op, AslGbl_MsgBuffer);






            Node->Type = 140;
            Status = AcpiDsScopeStackPush (Node, 140,
                WalkState);
            if (ACPI_FAILURE (Status))
            {
                return_ACPI_STATUS (Status);
            }
            break;
        }

        Status = AE_OK;
        goto FinishNode;

    default:

        ObjectType = AslMapNamedOpcodeToDataType (Op->Asl.AmlOpcode);
        break;
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH, "Loading name: %s, (%s)\n",
        Op->Asl.ExternalName, AcpiUtGetTypeName (ObjectType)));



    Flags |= ACPI_NS_ERROR_IF_FOUND;





    WalkState->OpInfo = AcpiPsGetOpcodeInfo (Op->Asl.AmlOpcode);
    if (((WalkState->OpInfo->Flags & AML_NAMED) ||
        (WalkState->OpInfo->Flags & AML_CREATE)) &&
        (Op->Asl.AmlOpcode != AML_EXTERNAL_OP))
    {
        Flags |= ACPI_NS_PREFIX_MUST_EXIST;
    }







    Status = AcpiNsLookup (WalkState->ScopeInfo, Path, ObjectType,
        ACPI_IMODE_LOAD_PASS1, Flags, WalkState, &Node);
    if (ACPI_FAILURE (Status))
    {
        if (Status == AE_ALREADY_EXISTS)
        {


            if (Node->Type == 140)
            {


                Node->Type = (UINT8) ObjectType;
                Status = AE_OK;
            }
            else if ((Node->Flags & ANOBJ_IS_EXTERNAL) &&
                     (Op->Asl.ParseOpcode != 130))
            {




                Node->Flags &= ~ANOBJ_IS_EXTERNAL;
                Node->Type = (UINT8) ObjectType;



                if (AcpiNsOpensScope (ObjectType))
                {
                    Status = AcpiDsScopeStackPush (Node, ObjectType, WalkState);
                    if (ACPI_FAILURE (Status))
                    {
                        return_ACPI_STATUS (Status);
                    }
                }

                Status = AE_OK;
            }
            else if (!(Node->Flags & ANOBJ_IS_EXTERNAL) &&
                     (Op->Asl.ParseOpcode == 130))
            {





                Status = AE_OK;
            }
            else if ((Node->Flags & ANOBJ_IS_EXTERNAL) &&
                     (Op->Asl.ParseOpcode == 130) &&
                     (ObjectType == ACPI_TYPE_ANY))
            {


                if (AcpiNsOpensScope (ActualObjectType))
                {
                    Node->Type = (UINT8) ActualObjectType;
                    Status = AE_OK;
                }
                else
                {
                    sprintf (AslGbl_MsgBuffer, "%s [%s]", Op->Asl.ExternalName,
                        AcpiUtGetTypeName (Node->Type));
                    AslError (ASL_ERROR, ASL_MSG_SCOPE_TYPE, Op, AslGbl_MsgBuffer);
                    return_ACPI_STATUS (AE_OK);
                }
            }
            else
            {


                AslDualParseOpError (ASL_ERROR, ASL_MSG_NAME_EXISTS, Op,
                    Op->Asl.ExternalName, ASL_MSG_FOUND_HERE, Node->Op,
                    Node->Op->Asl.ExternalName);
                return_ACPI_STATUS (AE_OK);
            }
        }
        else if (AE_NOT_FOUND)
        {





            Node = AcpiGbl_RootNode;
            Status = AE_OK;
        }
        else
        {


            AslCoreSubsystemError (Op, Status,
                "Failure from namespace lookup", FALSE);
            return_ACPI_STATUS (Status);
        }
    }



    LdCheckSpecialNames (Node, Op);

    if (ForceNewScope)
    {
        Status = AcpiDsScopeStackPush (Node, ObjectType, WalkState);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }
    }

FinishNode:




    Op->Asl.Node = Node;
    Node->Op = Op;



    if (ActualObjectType != ACPI_TYPE_ANY)
    {
        Node->Type = (UINT8) ActualObjectType;
        Node->Value = ASL_EXTERNAL_METHOD;
    }

    if (Op->Asl.ParseOpcode == PARSEOP_METHOD)
    {




        Node->Value = (UINT32) Op->Asl.Extra;
    }

    return_ACPI_STATUS (Status);
}
