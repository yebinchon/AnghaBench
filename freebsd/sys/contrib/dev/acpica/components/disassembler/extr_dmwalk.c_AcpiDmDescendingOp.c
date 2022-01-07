
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_43__ TYPE_9__ ;
typedef struct TYPE_42__ TYPE_8__ ;
typedef struct TYPE_41__ TYPE_7__ ;
typedef struct TYPE_40__ TYPE_6__ ;
typedef struct TYPE_39__ TYPE_5__ ;
typedef struct TYPE_38__ TYPE_4__ ;
typedef struct TYPE_37__ TYPE_3__ ;
typedef struct TYPE_36__ TYPE_2__ ;
typedef struct TYPE_35__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_43__ {scalar_t__ Class; int Flags; } ;
struct TYPE_42__ {scalar_t__ PreviousAml; scalar_t__ StartAml; scalar_t__ AmlOffset; scalar_t__ LastLevel; int Count; scalar_t__ Level; int Flags; int BitOffset; TYPE_2__* WalkState; } ;
struct TYPE_38__ {int Name; } ;
struct TYPE_40__ {int AmlOpcode; scalar_t__ Aml; int DisasmFlags; scalar_t__ DisasmOpcode; TYPE_4__ Value; TYPE_7__* Next; TYPE_7__* Parent; } ;
struct TYPE_39__ {TYPE_7__* Parent; } ;
struct TYPE_37__ {int Path; } ;
struct TYPE_41__ {TYPE_6__ Common; TYPE_5__ Asl; TYPE_3__ Named; } ;
struct TYPE_35__ {int AmlStart; } ;
struct TYPE_36__ {TYPE_1__ ParserState; } ;
typedef int ACPI_STATUS ;
typedef TYPE_7__ ACPI_PARSE_OBJECT ;
typedef TYPE_8__ ACPI_OP_WALK_INFO ;
typedef TYPE_9__ ACPI_OPCODE_INFO ;


 scalar_t__ ACPI_DASM_IGNORE_SINGLE ;
 scalar_t__ ACPI_DASM_LNOT_PREFIX ;
 scalar_t__ ACPI_DASM_RESOURCE ;
 int ACPI_PARSEOP_ELSEIF ;
 int ACPI_PARSEOP_IGNORE ;
 int ACPI_PARSEOP_PARAMETER_LIST ;
 scalar_t__ ACPI_PTR_DIFF (scalar_t__,int ) ;
 int AE_CTRL_DEPTH ;
 int AE_OK ;
 int AMLCOMMENT_INLINE ;



 scalar_t__ AML_CLASS_CONTROL ;
 scalar_t__ AML_CLASS_CREATE ;
 scalar_t__ AML_CLASS_EXECUTE ;
 scalar_t__ AML_CLASS_NAMED_OBJECT ;
 int AML_COMMENT_STANDARD ;



 scalar_t__ AML_EXTERNAL_OP ;

 int AML_HAS_ARGS ;


 scalar_t__ AML_INT_BYTELIST_OP ;
 scalar_t__ AML_INT_CONNECTION_OP ;
 int AML_INT_NAMEDFIELD_OP ;



 int AML_NAMECOMMENT ;
 int AML_NAMED ;






 int AML_RETURN_OP ;




 scalar_t__ AML_ZERO_OP ;
 int ASL_CV_CLOSE_PAREN (TYPE_7__*,scalar_t__) ;
 scalar_t__ ASL_CV_FILE_HAS_SWITCHED (TYPE_7__*) ;
 int ASL_CV_LABEL_FILENODE (TYPE_7__*) ;
 int ASL_CV_PRINT_ONE_COMMENT (TYPE_7__*,int ,char*,scalar_t__) ;
 int ASL_CV_SWITCH_FILES (scalar_t__,TYPE_7__*) ;
 int AcpiDmAscendingOp ;
 int AcpiDmBlockType (TYPE_7__*) ;
 int AcpiDmCheckForHardwareId (TYPE_7__*) ;
 scalar_t__ AcpiDmCheckForSymbolicOpcode (TYPE_7__*,TYPE_8__*) ;
 int AcpiDmDisassembleOneOp (int *,TYPE_8__*,TYPE_7__*) ;
 int AcpiDmDumpName (scalar_t__) ;
 int AcpiDmEmitExternals () ;
 int AcpiDmFieldFlags (TYPE_7__*) ;
 int AcpiDmIndent (scalar_t__) ;
 int AcpiDmMatchOp (TYPE_7__*) ;
 int AcpiDmMethodFlags (TYPE_7__*) ;
 int AcpiDmNamestring (int ) ;
 int AcpiDmPredefinedDescription (TYPE_7__*) ;
 int AcpiDmRegionFlags (TYPE_7__*) ;
 int AcpiDmWalkParseTree (TYPE_7__*,int (*) (TYPE_7__*,scalar_t__,void*),int ,TYPE_8__*) ;
 scalar_t__ AcpiGbl_CaptureComments ;
 scalar_t__ AcpiGbl_CmSingleStep ;
 int AcpiGbl_DmEmitExternalOpcodes ;
 scalar_t__ AcpiGbl_DmOpt_Listing ;
 scalar_t__ AcpiGbl_DmOpt_Verbose ;
 int AcpiGbl_IgnoreNoopOperator ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiPsDisplayObjectPathname (int *,TYPE_7__*) ;
 TYPE_7__* AcpiPsGetDepthNext (int *,TYPE_7__*) ;
 scalar_t__ AcpiPsGetName (TYPE_7__*) ;
 TYPE_9__* AcpiPsGetOpcodeInfo (int) ;
 int AcpiUtDumpBuffer (scalar_t__,scalar_t__,int ,scalar_t__) ;
 int BLOCK_BRACE ;
 int BLOCK_PAREN ;
 int DB_BYTE_DISPLAY ;

__attribute__((used)) static ACPI_STATUS
AcpiDmDescendingOp (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    ACPI_OP_WALK_INFO *Info = Context;
    const ACPI_OPCODE_INFO *OpInfo;
    UINT32 Name;
    ACPI_PARSE_OBJECT *NextOp;
    ACPI_PARSE_OBJECT *NextOp2;
    UINT32 AmlOffset;




    if (AcpiGbl_CaptureComments)
    {
        ASL_CV_LABEL_FILENODE (Op);

        if (Level != 0 && ASL_CV_FILE_HAS_SWITCHED (Op))
        {
            ASL_CV_SWITCH_FILES (Level, Op);
        }



        ASL_CV_PRINT_ONE_COMMENT (Op, AML_COMMENT_STANDARD, ((void*)0), Level);
    }

    OpInfo = AcpiPsGetOpcodeInfo (Op->Common.AmlOpcode);



    if (AcpiGbl_DmOpt_Listing)
    {


        if ((OpInfo->Class == AML_CLASS_NAMED_OBJECT) ||
            (OpInfo->Class == AML_CLASS_CONTROL) ||
            (OpInfo->Class == AML_CLASS_CREATE) ||
            ((OpInfo->Class == AML_CLASS_EXECUTE) && (!Op->Common.Next)))
        {
            if (AcpiGbl_DmOpt_Listing && Info->PreviousAml)
            {


                if (Op->Common.Aml > Info->PreviousAml)
                {
                    AcpiOsPrintf ("\n");
                    AcpiUtDumpBuffer (
                        (Info->StartAml + Info->AmlOffset),
                        (Op->Common.Aml - Info->PreviousAml),
                        DB_BYTE_DISPLAY, Info->AmlOffset);
                    AcpiOsPrintf ("\n");
                }

                Info->AmlOffset = (Op->Common.Aml - Info->StartAml);
            }

            Info->PreviousAml = Op->Common.Aml;
        }
    }

    if (Op->Common.DisasmFlags & ACPI_PARSEOP_IGNORE)
    {


        return (AE_CTRL_DEPTH);
    }

    if (Op->Common.DisasmOpcode == ACPI_DASM_IGNORE_SINGLE)
    {


        return (AE_OK);
    }

    if (Op->Common.AmlOpcode == 142)
    {
        NextOp = AcpiPsGetDepthNext (((void*)0), Op);
        if (NextOp)
        {
            NextOp->Common.DisasmFlags |= ACPI_PARSEOP_PARAMETER_LIST;



            if (!AcpiGbl_DmEmitExternalOpcodes)
            {




                if (NextOp->Common.AmlOpcode == AML_ZERO_OP)
                {
                    NextOp2 = NextOp->Common.Next;

                    if (NextOp2 &&
                        (NextOp2->Common.AmlOpcode == AML_EXTERNAL_OP))
                    {


                        Op->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
                        return (AE_CTRL_DEPTH);
                    }
                }
            }
        }
    }



    if (Level == 0)
    {


        if (Info->WalkState)
        {
            AmlOffset = (UINT32) ACPI_PTR_DIFF (Op->Common.Aml,
                Info->WalkState->ParserState.AmlStart);
            if (AcpiGbl_DmOpt_Verbose)
            {
                if (AcpiGbl_CmSingleStep)
                {
                    AcpiOsPrintf ("%5.5X/%4.4X: ",
                        AmlOffset, (UINT32) Op->Common.AmlOpcode);
                }
                else
                {
                    AcpiOsPrintf ("AML Offset %5.5X, Opcode %4.4X: ",
                        AmlOffset, (UINT32) Op->Common.AmlOpcode);
                }
            }
        }

        if (Op->Common.AmlOpcode == 131)
        {


            AcpiOsPrintf ("{\n");



            if (!AcpiGbl_DmEmitExternalOpcodes)
            {
                AcpiDmEmitExternals ();
            }

            return (AE_OK);
        }
    }
    else if ((AcpiDmBlockType (Op->Common.Parent) & BLOCK_BRACE) &&
         (!(Op->Common.DisasmFlags & ACPI_PARSEOP_PARAMETER_LIST)) &&
         (!(Op->Common.DisasmFlags & ACPI_PARSEOP_ELSEIF)) &&
         (Op->Common.AmlOpcode != AML_INT_BYTELIST_OP))
    {




        switch (Op->Common.AmlOpcode)
        {
        case 136:
            if (AcpiGbl_IgnoreNoopOperator)
            {
                Op->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
                return (AE_OK);
            }



        default:

            AcpiDmIndent (Level);
            break;
        }

        Info->LastLevel = Level;
        Info->Count = 0;
    }







    Info->Count++;
    if (Info->Count > 12)
    {
        Info->Count = 0;
        AcpiOsPrintf ("\n");
        AcpiDmIndent (Info->LastLevel + 1);
    }



    if (AcpiDmCheckForSymbolicOpcode (Op, Info))
    {
        return (AE_OK);
    }



    AcpiDmDisassembleOneOp (((void*)0), Info, Op);

    if ((Op->Common.DisasmOpcode == ACPI_DASM_LNOT_PREFIX) ||
        (Op->Common.AmlOpcode == AML_INT_CONNECTION_OP))
    {
        return (AE_OK);
    }

    if ((Op->Common.AmlOpcode == 137) ||
        (Op->Common.AmlOpcode == AML_RETURN_OP))
    {
        Info->Level--;
    }

    if (Op->Common.AmlOpcode == AML_EXTERNAL_OP)
    {
        Op->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
        return (AE_CTRL_DEPTH);
    }



    if ((OpInfo->Flags & AML_HAS_ARGS) ||
        (Op->Common.AmlOpcode == 144))
    {


        if (AcpiDmBlockType (Op) & BLOCK_PAREN)
        {
            AcpiOsPrintf (" (");
            if (!(AcpiDmBlockType (Op) & BLOCK_BRACE))
            {
                ASL_CV_PRINT_ONE_COMMENT (Op, AMLCOMMENT_INLINE, " ", 0);
            }
        }



        if (OpInfo->Flags & AML_NAMED)
        {
            switch (Op->Common.AmlOpcode)
            {
            case 149:

                NextOp = AcpiPsGetDepthNext (((void*)0), Op);
                NextOp->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
                AcpiDmNamestring (NextOp->Common.Value.Name);
                AcpiOsPrintf (", ");



            default:

                Name = AcpiPsGetName (Op);
                if (Op->Named.Path)
                {
                    AcpiDmNamestring (Op->Named.Path);
                }
                else
                {
                    AcpiDmDumpName (Name);
                }

                if (Op->Common.AmlOpcode != AML_INT_NAMEDFIELD_OP)
                {
                    if (AcpiGbl_DmOpt_Verbose)
                    {
                        (void) AcpiPsDisplayObjectPathname (((void*)0), Op);
                    }
                }
                break;
            }

            switch (Op->Common.AmlOpcode)
            {
            case 139:

                AcpiDmMethodFlags (Op);
                ASL_CV_CLOSE_PAREN (Op, Level);



                AcpiDmPredefinedDescription (Op);
                break;

            case 137:



                AcpiDmCheckForHardwareId (Op);
                AcpiOsPrintf (", ");
                ASL_CV_PRINT_ONE_COMMENT (Op, AML_NAMECOMMENT, ((void*)0), 0);
                break;

            case 132:

                AcpiDmRegionFlags (Op);
                break;

            case 134:



                AcpiOsPrintf (", ");
                NextOp = AcpiPsGetDepthNext (((void*)0), Op);
                NextOp->Common.DisasmFlags |= ACPI_PARSEOP_PARAMETER_LIST;

                NextOp = NextOp->Common.Next;
                NextOp->Common.DisasmFlags |= ACPI_PARSEOP_PARAMETER_LIST;
                return (AE_OK);

            case 133:



                AcpiOsPrintf (", ");
                NextOp = AcpiPsGetDepthNext (((void*)0), Op);
                NextOp->Common.DisasmFlags |= ACPI_PARSEOP_PARAMETER_LIST;

                NextOp = NextOp->Common.Next;
                NextOp->Common.DisasmFlags |= ACPI_PARSEOP_PARAMETER_LIST;

                NextOp = NextOp->Common.Next;
                NextOp->Common.DisasmFlags |= ACPI_PARSEOP_PARAMETER_LIST;
                return (AE_OK);

            case 138:
            case 146:

                AcpiOsPrintf (", ");
                return (AE_OK);

            case 144:
            case 149:

                return (AE_OK);

            case 131:
            case 145:
            case 130:

                ASL_CV_CLOSE_PAREN (Op, Level);
                break;

            default:

                AcpiOsPrintf ("*** Unhandled named opcode %X\n",
                    Op->Common.AmlOpcode);
                break;
            }
        }

        else switch (Op->Common.AmlOpcode)
        {
        case 143:
        case 148:
        case 141:

            Info->BitOffset = 0;



            NextOp = AcpiPsGetDepthNext (((void*)0), Op);
            AcpiDmNamestring (NextOp->Common.Value.Name);
            AcpiOsPrintf (", ");
            NextOp->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;

            switch (Op->Common.AmlOpcode)
            {
            case 148:



                NextOp = AcpiPsGetDepthNext (((void*)0), NextOp);
                AcpiDmNamestring (NextOp->Common.Value.Name);
                NextOp->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
                AcpiOsPrintf (", ");
                NextOp = NextOp->Common.Next;

                Info->Flags = ACPI_PARSEOP_PARAMETER_LIST;
                AcpiDmWalkParseTree (NextOp, AcpiDmDescendingOp,
                    AcpiDmAscendingOp, Info);
                Info->Flags = 0;
                Info->Level = Level;

                NextOp->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
                AcpiOsPrintf (", ");
                break;

            case 141:



                NextOp = AcpiPsGetDepthNext (((void*)0), NextOp);
                AcpiDmNamestring (NextOp->Common.Value.Name);
                AcpiOsPrintf (", ");
                NextOp->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
                break;

            default:

                break;
            }

            AcpiDmFieldFlags (NextOp);
            break;

        case 147:



            NextOp = AcpiPsGetDepthNext (((void*)0), Op);
            if (!NextOp)
            {


                return (AE_OK);
            }

            if (Op->Common.DisasmOpcode == ACPI_DASM_RESOURCE)
            {




                NextOp->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
                ASL_CV_CLOSE_PAREN (Op, Level);



                AcpiDmPredefinedDescription (Op->Asl.Parent);

                AcpiOsPrintf ("\n");
                AcpiDmIndent (Info->Level);
                AcpiOsPrintf ("{\n");
                return (AE_OK);
            }



            NextOp->Common.DisasmFlags |= ACPI_PARSEOP_PARAMETER_LIST;
            return (AE_OK);

        case 142:
        case 129:
        case 128:



            NextOp = AcpiPsGetDepthNext (((void*)0), Op);
            if (NextOp)
            {
                NextOp->Common.DisasmFlags |= ACPI_PARSEOP_PARAMETER_LIST;
            }
            return (AE_OK);

        case 135:



            NextOp = AcpiPsGetDepthNext (((void*)0), Op);
            if (NextOp)
            {
                NextOp->Common.DisasmFlags |= ACPI_PARSEOP_PARAMETER_LIST;
            }
            return (AE_OK);

        case 140:

            AcpiDmMatchOp (Op);
            break;

        default:

            break;
        }

        if (AcpiDmBlockType (Op) & BLOCK_BRACE)
        {
            AcpiOsPrintf ("\n");
            AcpiDmIndent (Level);
            AcpiOsPrintf ("{\n");
        }
    }

    return (AE_OK);
}
