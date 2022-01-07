
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int UINT8 ;
typedef size_t UINT32 ;
struct TYPE_21__ {int Integer; int String; } ;
struct TYPE_22__ {int ParseOpcode; char* NameSeg; char* ExternalName; int AmlOpcode; int CompileFlags; TYPE_5__* Next; TYPE_5__* Child; TYPE_1__ Value; TYPE_5__* Parent; int Node; } ;
struct TYPE_25__ {TYPE_2__ Asl; } ;
struct TYPE_24__ {TYPE_3__* MethodStack; } ;
struct TYPE_23__ {int NumArguments; int ShouldBeSerialized; int NumReturnNoValue; int NumReturnWithValue; void** ArgInitialized; void** LocalInitialized; TYPE_5__* Op; int CreatesNamedObjects; int * ValidArgTypes; int ValidReturnTypes; struct TYPE_23__* Next; } ;
typedef int BOOLEAN ;
typedef TYPE_3__ ASL_METHOD_INFO ;
typedef TYPE_4__ ASL_ANALYSIS_WALK_INFO ;
typedef int ACPI_STATUS ;
typedef TYPE_5__ ACPI_PARSE_OBJECT ;


 int ACPI_COMPARE_NAMESEG (int ,char*) ;
 int ACPI_UINT8_MAX ;
 size_t ACPI_VALID_RESERVED_NAME_MAX ;
 int ACPI_WARNING (int ) ;
 int AE_ERROR ;
 int AE_INFO ;
 int AE_OK ;
 int ASL_ERROR ;
 int ASL_MSG_ARG_INIT ;
 int ASL_MSG_FOUND_HERE ;
 int ASL_MSG_ILLEGAL_RECURSION ;
 int ASL_MSG_INVALID_TIME ;
 int ASL_MSG_LOCAL_INIT ;
 int ASL_MSG_LOCAL_OUTSIDE_METHOD ;
 int ASL_MSG_MISSING_DEPENDENCY ;
 int ASL_MSG_MULTIPLE_TYPES ;
 int ASL_MSG_NOT_PARAMETER ;
 int ASL_MSG_NO_WHILE ;
 int ASL_MSG_RECURSION ;
 int ASL_MSG_RESERVED_USE ;
 int ASL_REMARK ;
 int ASL_TYPE_CID ;
 int ASL_TYPE_HID ;
 int ASL_WARNING ;
 int AnCheckId (TYPE_5__*,int ) ;
 int AnMapObjTypeToBtype (TYPE_5__*) ;
 size_t ApCheckForPredefinedName (TYPE_5__*,char*) ;
 int ApCheckForPredefinedObject (TYPE_5__*,char*) ;
 int ApFindNameInDeviceTree (int ,TYPE_5__*) ;
 int ApFindNameInScope (int ,TYPE_5__*) ;
 int AslDualParseOpError (int ,int ,TYPE_5__*,int ,int ,TYPE_5__*,char*) ;
 int AslError (int ,int ,TYPE_5__*,char*) ;
 scalar_t__ AslGbl_CrossReferenceOutput ;
 char* AslGbl_MsgBuffer ;
 int AslGbl_TotalMethods ;
 int METHOD_NAME__ADR ;
 int METHOD_NAME__CID ;
 int METHOD_NAME__HID ;
 int METHOD_NAME__PS0 ;
 int METHOD_NAME__PS1 ;
 int METHOD_NAME__PS2 ;
 int METHOD_NAME__PS3 ;
 int MtCheckNamedObjectInMethod (TYPE_5__*,TYPE_3__*) ;
 int OP_IS_NULL_RETURN ;
 int OP_IS_TARGET ;
 int OtXrefWalkPart1 (TYPE_5__*,size_t,TYPE_3__*) ;
 void* PARSEOP_DEFAULT_ARG ;


 void* PARSEOP_INTEGER ;
 void* PARSEOP_OBJECTTYPE ;

 void* PARSEOP_PACKAGE ;





 void* PARSEOP_VAR_PACKAGE ;
 void* PARSEOP_WHILE ;
 void* TRUE ;
 TYPE_3__* UtLocalCalloc (int) ;
 int sprintf (char*,char*,char*) ;
 int strcmp (int ,char*) ;
 int strlen (char*) ;

ACPI_STATUS
MtMethodAnalysisWalkBegin (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    ASL_ANALYSIS_WALK_INFO *WalkInfo = (ASL_ANALYSIS_WALK_INFO *) Context;
    ASL_METHOD_INFO *MethodInfo = WalkInfo->MethodStack;
    ACPI_PARSE_OBJECT *Next;
    UINT32 RegisterNumber;
    UINT32 i;
    char LocalName[] = "Local0";
    char ArgName[] = "Arg0";
    ACPI_PARSE_OBJECT *ArgNode;
    ACPI_PARSE_OBJECT *NextType;
    ACPI_PARSE_OBJECT *NextParamType;
    UINT8 ActualArgs = 0;
    BOOLEAN HidExists;
    BOOLEAN AdrExists;




    if (AslGbl_CrossReferenceOutput)
    {
        OtXrefWalkPart1 (Op, Level, MethodInfo);
    }

    switch (Op->Asl.ParseOpcode)
    {
    case 137:

        AslGbl_TotalMethods++;



        MethodInfo = UtLocalCalloc (sizeof (ASL_METHOD_INFO));
        MethodInfo->Next = WalkInfo->MethodStack;
        MethodInfo->Op = Op;

        WalkInfo->MethodStack = MethodInfo;







        if (ACPI_COMPARE_NAMESEG (METHOD_NAME__PS0, Op->Asl.NameSeg))
        {


            if ((!ApFindNameInScope (METHOD_NAME__PS1, Op)) &&
                (!ApFindNameInScope (METHOD_NAME__PS2, Op)) &&
                (!ApFindNameInScope (METHOD_NAME__PS3, Op)))
            {
                AslError (ASL_WARNING, ASL_MSG_MISSING_DEPENDENCY, Op,
                    "_PS0 requires one of _PS1/_PS2/_PS3 in same scope");
            }
        }
        else if (
            ACPI_COMPARE_NAMESEG (METHOD_NAME__PS1, Op->Asl.NameSeg) ||
            ACPI_COMPARE_NAMESEG (METHOD_NAME__PS2, Op->Asl.NameSeg) ||
            ACPI_COMPARE_NAMESEG (METHOD_NAME__PS3, Op->Asl.NameSeg))
        {


            if (!ApFindNameInScope (METHOD_NAME__PS0, Op))
            {
                sprintf (AslGbl_MsgBuffer,
                    "%4.4s requires _PS0 in same scope", Op->Asl.NameSeg);

                AslError (ASL_WARNING, ASL_MSG_MISSING_DEPENDENCY, Op,
                    AslGbl_MsgBuffer);
            }
        }



        Next = Op->Asl.Child;



        Next = Next->Asl.Next;
        MethodInfo->NumArguments = (UINT8)
            (((UINT8) Next->Asl.Value.Integer) & 0x07);



        Next = Next->Asl.Next;
        MethodInfo->ShouldBeSerialized = (UINT8) Next->Asl.Value.Integer;

        Next = Next->Asl.Next;
        ArgNode = Next;



        Next = Next->Asl.Next;

        NextType = Next->Asl.Child;
        while (NextType)
        {


            MethodInfo->ValidReturnTypes |= AnMapObjTypeToBtype (NextType);
            NextType->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;
            NextType = NextType->Asl.Next;
        }



        Next = Next->Asl.Next;

        NextType = Next->Asl.Child;
        while (NextType)
        {
            if (NextType->Asl.ParseOpcode == PARSEOP_DEFAULT_ARG)
            {
                NextParamType = NextType->Asl.Child;
                while (NextParamType)
                {
                    MethodInfo->ValidArgTypes[ActualArgs] |=
                        AnMapObjTypeToBtype (NextParamType);

                    NextParamType->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;
                    NextParamType = NextParamType->Asl.Next;
                }
            }
            else
            {
                MethodInfo->ValidArgTypes[ActualArgs] =
                    AnMapObjTypeToBtype (NextType);

                NextType->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;
                ActualArgs++;
            }

            NextType = NextType->Asl.Next;
        }

        if ((MethodInfo->NumArguments) &&
            (MethodInfo->NumArguments != ActualArgs))
        {

        }



        if ((!MethodInfo->NumArguments) && (ActualArgs))
        {
            MethodInfo->NumArguments = ActualArgs;
            ArgNode->Asl.Value.Integer |= ActualArgs;
        }






        for (i = 0; i < MethodInfo->NumArguments; i++)
        {
            MethodInfo->ArgInitialized[i] = TRUE;
        }
        break;

    case 136:



        if (MethodInfo &&
           (Op->Asl.Node == MethodInfo->Op->Asl.Node))
        {
            if (MethodInfo->CreatesNamedObjects)
            {
                AslDualParseOpError (ASL_ERROR, ASL_MSG_ILLEGAL_RECURSION, Op,
                    Op->Asl.Value.String, ASL_MSG_FOUND_HERE, MethodInfo->Op,
                    MethodInfo->Op->Asl.ExternalName);
            }
            else
            {


                AslError (ASL_REMARK, ASL_MSG_RECURSION, Op, Op->Asl.ExternalName);
            }
        }
        break;

    case 145:
    case 144:
    case 143:
    case 142:
    case 141:
    case 140:
    case 139:
    case 138:

        if (!MethodInfo)
        {




            AslError (ASL_REMARK, ASL_MSG_LOCAL_OUTSIDE_METHOD,
                Op, Op->Asl.ExternalName);
            return (AE_ERROR);
        }

        RegisterNumber = (Op->Asl.AmlOpcode & 0x0007);





        if (Op->Asl.CompileFlags & OP_IS_TARGET)
        {
            MethodInfo->LocalInitialized[RegisterNumber] = TRUE;
        }







        else if ((!MethodInfo->LocalInitialized[RegisterNumber]) &&
                 (Op->Asl.Parent->Asl.ParseOpcode != PARSEOP_OBJECTTYPE))
        {
            LocalName[strlen (LocalName) -1] = (char) (RegisterNumber + 0x30);
            AslError (ASL_ERROR, ASL_MSG_LOCAL_INIT, Op, LocalName);
        }
        break;

    case 156:
    case 155:
    case 154:
    case 153:
    case 152:
    case 151:
    case 150:

        if (!MethodInfo)
        {




            AslError (ASL_REMARK, ASL_MSG_LOCAL_OUTSIDE_METHOD,
                Op, Op->Asl.ExternalName);
            return (AE_ERROR);
        }

        RegisterNumber = (Op->Asl.AmlOpcode & 0x000F) - 8;
        ArgName[strlen (ArgName) -1] = (char) (RegisterNumber + 0x30);





        if (Op->Asl.CompileFlags & OP_IS_TARGET)
        {
            MethodInfo->ArgInitialized[RegisterNumber] = TRUE;
        }







        else if ((!MethodInfo->ArgInitialized[RegisterNumber]) &&
            (Op->Asl.Parent->Asl.ParseOpcode != PARSEOP_OBJECTTYPE))
        {
            AslError (ASL_ERROR, ASL_MSG_ARG_INIT, Op, ArgName);
        }



        if (RegisterNumber >= MethodInfo->NumArguments)
        {
            AslError (ASL_REMARK, ASL_MSG_NOT_PARAMETER, Op, ArgName);
        }
        break;

    case 130:

        if (!MethodInfo)
        {




            ACPI_WARNING ((AE_INFO, "%p, No parent method", Op));
            return (AE_ERROR);
        }
        if ((Op->Asl.Child) &&
            (Op->Asl.Child->Asl.ParseOpcode != PARSEOP_DEFAULT_ARG) &&
            (!(Op->Asl.Child->Asl.CompileFlags & OP_IS_NULL_RETURN)))
        {
            MethodInfo->NumReturnWithValue++;
        }
        else
        {
            MethodInfo->NumReturnNoValue++;
        }
        break;

    case 149:
    case 148:

        Next = Op->Asl.Parent;
        while (Next)
        {
            if (Next->Asl.ParseOpcode == PARSEOP_WHILE)
            {
                break;
            }
            Next = Next->Asl.Parent;
        }

        if (!Next)
        {
            AslError (ASL_ERROR, ASL_MSG_NO_WHILE, Op, ((void*)0));
        }
        break;

    case 129:



        if ((Op->Asl.Child->Asl.ParseOpcode == PARSEOP_INTEGER) &&
            (Op->Asl.Child->Asl.Value.Integer > ACPI_UINT8_MAX))
        {
            AslError (ASL_ERROR, ASL_MSG_INVALID_TIME, Op, ((void*)0));
        }
        break;

    case 147:



        HidExists = ApFindNameInDeviceTree (METHOD_NAME__HID, Op);
        AdrExists = ApFindNameInDeviceTree (METHOD_NAME__ADR, Op);

        if (!HidExists && !AdrExists)
        {
            AslError (ASL_WARNING, ASL_MSG_MISSING_DEPENDENCY, Op,
                "Device object requires a _HID or _ADR in same scope");
        }
        else if (HidExists && AdrExists)
        {





            AslError (ASL_WARNING, ASL_MSG_MULTIPLE_TYPES, Op,
                "Device object requires either a _HID or _ADR, but not both");
        }
        break;

    case 146:
    case 135:
    case 133:
    case 132:
    case 131:
    case 128:





        i = ApCheckForPredefinedName (Op, Op->Asl.NameSeg);
        if (i < ACPI_VALID_RESERVED_NAME_MAX)
        {
            AslError (ASL_ERROR, ASL_MSG_RESERVED_USE,
                Op, Op->Asl.ExternalName);
        }
        break;

    case 134:



        ApCheckForPredefinedObject (Op, Op->Asl.NameSeg);



        if (!strcmp (METHOD_NAME__HID, Op->Asl.NameSeg))
        {
            Next = Op->Asl.Child->Asl.Next;
            AnCheckId (Next, ASL_TYPE_HID);
        }



        else if (!strcmp (METHOD_NAME__CID, Op->Asl.NameSeg))
        {
            Next = Op->Asl.Child->Asl.Next;

            if ((Next->Asl.ParseOpcode == PARSEOP_PACKAGE) ||
                (Next->Asl.ParseOpcode == PARSEOP_VAR_PACKAGE))
            {
                Next = Next->Asl.Child;
                while (Next)
                {
                    AnCheckId (Next, ASL_TYPE_CID);
                    Next = Next->Asl.Next;
                }
            }
            else
            {
                AnCheckId (Next, ASL_TYPE_CID);
            }
        }

        break;

    default:

        break;
    }



    MtCheckNamedObjectInMethod (Op, MethodInfo);
    return (AE_OK);
}
