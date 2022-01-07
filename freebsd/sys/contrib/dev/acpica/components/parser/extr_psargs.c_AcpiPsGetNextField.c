
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
struct TYPE_20__ {int Integer; int Name; void* Size; } ;
struct TYPE_21__ {TYPE_3__ Value; int * InlineComment; int * NameComment; } ;
struct TYPE_18__ {int Size; } ;
struct TYPE_19__ {int* Data; TYPE_1__ Value; } ;
struct TYPE_23__ {TYPE_4__ Common; TYPE_2__ Named; } ;
struct TYPE_22__ {int* Aml; } ;
typedef TYPE_5__ ACPI_PARSE_STATE ;
typedef TYPE_6__ ACPI_PARSE_OBJECT ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GET16 (int*) ;
 int ACPI_GET32 (int*) ;
 int ACPI_GET8 (int*) ;
 int ACPI_MOVE_32_TO_32 (int*,int*) ;
 int ACPI_NAMESEG_SIZE ;
 int AML_BUFFER_OP ;







 int AML_INT_BYTELIST_OP ;



 int AML_INT_NAMEPATH_OP ;


 int ASL_CV_CAPTURE_COMMENTS_ONLY (TYPE_5__*) ;
 int * AcpiGbl_CurrentInlineComment ;
 TYPE_6__* AcpiPsAllocOp (int,int*) ;
 int AcpiPsAppendArg (TYPE_6__*,TYPE_6__*) ;
 int AcpiPsFreeOp (TYPE_6__*) ;
 int AcpiPsGetNextNamestring (TYPE_5__*) ;
 void* AcpiPsGetNextPackageLength (TYPE_5__*) ;
 int AcpiPsSetName (TYPE_6__*,int) ;
 int PsGetNextField ;
 int return_PTR (TYPE_6__*) ;

__attribute__((used)) static ACPI_PARSE_OBJECT *
AcpiPsGetNextField (
    ACPI_PARSE_STATE *ParserState)
{
    UINT8 *Aml;
    ACPI_PARSE_OBJECT *Field;
    ACPI_PARSE_OBJECT *Arg = ((void*)0);
    UINT16 Opcode;
    UINT32 Name;
    UINT8 AccessType;
    UINT8 AccessAttribute;
    UINT8 AccessLength;
    UINT32 PkgLength;
    UINT8 *PkgEnd;
    UINT32 BufferLength;


    ACPI_FUNCTION_TRACE (PsGetNextField);


    ASL_CV_CAPTURE_COMMENTS_ONLY (ParserState);
    Aml = ParserState->Aml;



    switch (ACPI_GET8 (ParserState->Aml))
    {
    case 134:

        Opcode = 129;
        ParserState->Aml++;
        break;

    case 137:

        Opcode = 133;
        ParserState->Aml++;
        break;

    case 136:

        Opcode = 132;
        ParserState->Aml++;
        break;

    case 135:

        Opcode = 131;
        ParserState->Aml++;
        break;

    default:

        Opcode = 130;
        break;
    }



    Field = AcpiPsAllocOp (Opcode, Aml);
    if (!Field)
    {
        return_PTR (((void*)0));
    }



    ASL_CV_CAPTURE_COMMENTS_ONLY (ParserState);
    switch (Opcode)
    {
    case 130:



        ACPI_MOVE_32_TO_32 (&Name, ParserState->Aml);
        AcpiPsSetName (Field, Name);
        ParserState->Aml += ACPI_NAMESEG_SIZE;


        ASL_CV_CAPTURE_COMMENTS_ONLY (ParserState);
        Field->Common.Value.Size = AcpiPsGetNextPackageLength (ParserState);
        break;


    case 129:



        Field->Common.Value.Size = AcpiPsGetNextPackageLength (ParserState);
        break;


    case 133:
    case 131:
        AccessType = ACPI_GET8 (ParserState->Aml);
        ParserState->Aml++;
        AccessAttribute = ACPI_GET8 (ParserState->Aml);
        ParserState->Aml++;

        Field->Common.Value.Integer = (UINT8) AccessType;
        Field->Common.Value.Integer |= (UINT16) (AccessAttribute << 8);



        if (Opcode == 131)
        {
            AccessLength = ACPI_GET8 (ParserState->Aml);
            ParserState->Aml++;

            Field->Common.Value.Integer |= (UINT32) (AccessLength << 16);
        }
        break;


    case 132:





        Aml = ParserState->Aml;
        if (ACPI_GET8 (ParserState->Aml) == AML_BUFFER_OP)
        {
            ParserState->Aml++;

            ASL_CV_CAPTURE_COMMENTS_ONLY (ParserState);
            PkgEnd = ParserState->Aml;
            PkgLength = AcpiPsGetNextPackageLength (ParserState);
            PkgEnd += PkgLength;

            ASL_CV_CAPTURE_COMMENTS_ONLY (ParserState);
            if (ParserState->Aml < PkgEnd)
            {


                Arg = AcpiPsAllocOp (AML_INT_BYTELIST_OP, Aml);
                if (!Arg)
                {
                    AcpiPsFreeOp (Field);
                    return_PTR (((void*)0));
                }



                Opcode = ACPI_GET8 (ParserState->Aml);
                ParserState->Aml++;

                ASL_CV_CAPTURE_COMMENTS_ONLY (ParserState);
                switch (Opcode)
                {
                case 139:

                    BufferLength = ACPI_GET8 (ParserState->Aml);
                    ParserState->Aml += 1;
                    break;

                case 128:

                    BufferLength = ACPI_GET16 (ParserState->Aml);
                    ParserState->Aml += 2;
                    break;

                case 138:

                    BufferLength = ACPI_GET32 (ParserState->Aml);
                    ParserState->Aml += 4;
                    break;

                default:

                    BufferLength = 0;
                    break;
                }



                ASL_CV_CAPTURE_COMMENTS_ONLY (ParserState);
                Arg->Named.Value.Size = BufferLength;
                Arg->Named.Data = ParserState->Aml;
            }



            ParserState->Aml = PkgEnd;
        }
        else
        {
            Arg = AcpiPsAllocOp (AML_INT_NAMEPATH_OP, Aml);
            if (!Arg)
            {
                AcpiPsFreeOp (Field);
                return_PTR (((void*)0));
            }



            Arg->Common.Value.Name = AcpiPsGetNextNamestring (ParserState);
        }



        AcpiPsAppendArg (Field, Arg);
        break;


    default:


        break;
    }

    return_PTR (Field);
}
