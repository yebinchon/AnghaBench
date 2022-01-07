
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_20__ {scalar_t__ Class; scalar_t__ RuntimeArgs; int Flags; char* Name; } ;
struct TYPE_18__ {int AmlOpcode; TYPE_5__* Next; int ParseOpcode; TYPE_3__* Node; TYPE_2__* Parent; TYPE_5__* Child; } ;
struct TYPE_19__ {TYPE_4__ Asl; } ;
struct TYPE_17__ {int Type; } ;
struct TYPE_15__ {scalar_t__ AmlOpcode; } ;
struct TYPE_16__ {TYPE_1__ Asl; } ;
typedef int ACPI_STATUS ;
typedef TYPE_5__ ACPI_PARSE_OBJECT ;
typedef TYPE_6__ ACPI_OPCODE_INFO ;


 int ACPI_TYPE_LOCAL_RESOURCE ;
 int ACPI_TYPE_LOCAL_RESOURCE_FIELD ;
 scalar_t__ ACPI_UINT32_MAX ;
 int AE_OK ;





 scalar_t__ AML_CLASS_NAMED_OBJECT ;


 int AML_DEBUG_OP ;



 int AML_NSNODE ;
 int AML_SCOPE_OP ;







 scalar_t__ ARGI_INVALID_OPCODE ;




 scalar_t__ ARG_TYPE_WIDTH ;
 int ASL_ERROR ;
 int ASL_MSG_COMPILER_INTERNAL ;
 int ASL_MSG_INVALID_TYPE ;
 int ASL_MSG_NAMED_OBJECT_IN_WHILE ;
 int ASL_MSG_RESOURCE_FIELD ;
 TYPE_6__* AcpiPsGetOpcodeInfo (int) ;
 int AnCheckMethodReturnValue (TYPE_5__*,TYPE_6__ const*,TYPE_5__*,scalar_t__,scalar_t__) ;
 int AnFormatBtype (char*,scalar_t__) ;
 scalar_t__ AnGetBtype (TYPE_5__*) ;
 int AnIsInternalMethod (TYPE_5__*) ;
 scalar_t__ AnMapArgTypeToBtype (scalar_t__) ;
 int AslAbort () ;
 int AslError (int ,int ,TYPE_5__*,char*) ;
 char* AslGbl_MsgBuffer ;
 char* AslGbl_StringBuffer ;
 char* AslGbl_StringBuffer2 ;
 scalar_t__ GET_CURRENT_ARG_TYPE (scalar_t__) ;
 int INCREMENT_ARG_LIST (scalar_t__) ;
 int PARSEOP_INTEGER ;
 int PARSEOP_METHODCALL ;
 int PARSEOP_RAW_DATA ;

 int PARSEOP_ZERO ;
 int sprintf (char*,char*,char*,char*,char*) ;

ACPI_STATUS
AnOperandTypecheckWalkEnd (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    const ACPI_OPCODE_INFO *OpInfo;
    UINT32 RuntimeArgTypes;
    UINT32 RuntimeArgTypes2;
    UINT32 RequiredBtypes;
    UINT32 ThisNodeBtype;
    UINT32 CommonBtypes;
    UINT32 OpcodeClass;
    ACPI_PARSE_OBJECT *ArgOp;
    UINT32 ArgType;


    switch (Op->Asl.AmlOpcode)
    {
    case 163:
    case 159:
    case 161:
    case 160:
    case 164:
    case 162:
    case 166:
    case 155:
    case 169:



        return (AE_OK);

    default:

        break;
    }

    OpInfo = AcpiPsGetOpcodeInfo (Op->Asl.AmlOpcode);
    if (!OpInfo)
    {
        return (AE_OK);
    }

    ArgOp = Op->Asl.Child;
    OpcodeClass = OpInfo->Class;
    RuntimeArgTypes = OpInfo->RuntimeArgs;
    switch (Op->Asl.AmlOpcode)
    {
    case 167:
    case 153:
    case 157:

        if (ArgOp->Asl.ParseOpcode == PARSEOP_METHODCALL)
        {


            if (AnIsInternalMethod (ArgOp))
            {
                return (AE_OK);
            }



            RequiredBtypes = AnMapArgTypeToBtype (151);
            if (Op->Asl.AmlOpcode == 157)
            {
                RequiredBtypes = 0xFFFFFFFF;
            }

            ThisNodeBtype = AnGetBtype (ArgOp);
            if (ThisNodeBtype == ACPI_UINT32_MAX)
            {
                return (AE_OK);
            }

            AnCheckMethodReturnValue (Op, OpInfo, ArgOp,
                RequiredBtypes, ThisNodeBtype);
        }
        return (AE_OK);

    case 168:




        return (AE_OK);

    default:

        break;
    }



    if (RuntimeArgTypes == ARGI_INVALID_OPCODE)
    {
        return (AE_OK);
    }




    switch (Op->Asl.AmlOpcode)
    {


    case 176:

        OpcodeClass = 172;
        ArgOp = ArgOp->Asl.Next;
        ArgOp = ArgOp->Asl.Next;
        break;



    case 158:

        OpcodeClass = 172;
        ArgOp = ArgOp->Asl.Next;
        ArgOp = ArgOp->Asl.Next;
        break;



    case 170:

        OpcodeClass = 172;
        ArgOp = ArgOp->Asl.Next;
        break;



    case 175:
    case 165:
    case 154:



        if ((ArgOp->Asl.ParseOpcode == PARSEOP_INTEGER) ||
            (ArgOp->Asl.ParseOpcode == PARSEOP_RAW_DATA))
        {
            return (AE_OK);
        }
        break;



    case 156:





        if (ArgOp->Asl.Next->Asl.AmlOpcode == AML_DEBUG_OP)
        {
            return (AE_OK);
        }
        break;

    default:
        break;
    }

    switch (OpcodeClass)
    {
    case 172:
    case 173:
    case 174:
    case 171:



        RuntimeArgTypes2 = 0;
        while ((ArgType = GET_CURRENT_ARG_TYPE (RuntimeArgTypes)))
        {
            RuntimeArgTypes2 <<= ARG_TYPE_WIDTH;
            RuntimeArgTypes2 |= ArgType;
            INCREMENT_ARG_LIST (RuntimeArgTypes);
        }



        while ((ArgType = GET_CURRENT_ARG_TYPE (RuntimeArgTypes2)))
        {


            RequiredBtypes = AnMapArgTypeToBtype (ArgType);

            if (!ArgOp)
            {
                AslError (ASL_ERROR, ASL_MSG_COMPILER_INTERNAL, Op,
                    "Null ArgOp in argument loop");
                AslAbort ();
            }



            ThisNodeBtype = AnGetBtype (ArgOp);
            if (ThisNodeBtype == ACPI_UINT32_MAX)
            {
                goto NextArgument;
            }



            switch (ArgType)
            {
            case 146:

                if (ArgOp->Asl.ParseOpcode == PARSEOP_ZERO)
                {


                    ThisNodeBtype = RequiredBtypes;
                    break;
                }



            case 147:

                if (ArgOp->Asl.ParseOpcode == PARSEOP_INTEGER)
                {






                    if ((ArgOp->Asl.Node->Type == ACPI_TYPE_LOCAL_RESOURCE_FIELD) ||
                        (ArgOp->Asl.Node->Type == ACPI_TYPE_LOCAL_RESOURCE))
                    {
                        AslError (ASL_ERROR, ASL_MSG_RESOURCE_FIELD,
                            ArgOp, ((void*)0));
                    }
                    else
                    {
                        AslError (ASL_ERROR, ASL_MSG_INVALID_TYPE,
                            ArgOp, ((void*)0));
                    }
                }
                break;
            case 151:
            default:

                break;
            }




            CommonBtypes = ThisNodeBtype & RequiredBtypes;

            if (ArgOp->Asl.ParseOpcode == PARSEOP_METHODCALL)
            {
                if (AnIsInternalMethod (ArgOp))
                {
                    return (AE_OK);
                }



                AnCheckMethodReturnValue (Op, OpInfo, ArgOp,
                    RequiredBtypes, ThisNodeBtype);
            }





            else if (!CommonBtypes)
            {


                AnFormatBtype (AslGbl_StringBuffer, ThisNodeBtype);
                AnFormatBtype (AslGbl_StringBuffer2, RequiredBtypes);

                sprintf (AslGbl_MsgBuffer, "[%s] found, %s operator requires [%s]",
                    AslGbl_StringBuffer, OpInfo->Name, AslGbl_StringBuffer2);

                AslError (ASL_ERROR, ASL_MSG_INVALID_TYPE,
                    ArgOp, AslGbl_MsgBuffer);
            }

        NextArgument:
            ArgOp = ArgOp->Asl.Next;
            INCREMENT_ARG_LIST (RuntimeArgTypes2);
        }
        break;

    default:

        break;
    }

    return (AE_OK);
}
