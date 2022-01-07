
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
struct TYPE_8__ {int Integer; scalar_t__ String; } ;
struct TYPE_9__ {int ParseOpcode; int CompileFlags; TYPE_1__ Value; } ;
struct TYPE_10__ {TYPE_2__ Asl; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int ASL_ERROR ;
 int ASL_MSG_INVALID_EISAID ;
 int AcpiUtAsciiCharToHex (char) ;
 int AcpiUtDwordByteSwap (int) ;
 int AslError (int ,int ,TYPE_3__*,scalar_t__) ;
 int OP_COMPILE_TIME_CONST ;
 int OpcSetOptimalIntegerSize (TYPE_3__*) ;
 int PARSEOP_INTEGER ;
 int UtSetParseOpName (TYPE_3__*) ;
 int isupper (int) ;
 int isxdigit (int) ;
 int strlen (char*) ;

__attribute__((used)) static void
OpcDoEisaId (
    ACPI_PARSE_OBJECT *Op)
{
    UINT32 EisaId = 0;
    UINT32 BigEndianId;
    char *InString;
    ACPI_STATUS Status = AE_OK;
    UINT32 i;


    InString = (char *) Op->Asl.Value.String;





    if (strlen (InString) != 7)
    {
        Status = AE_BAD_PARAMETER;
    }
    else
    {


        for (i = 0; i < 7; i++)
        {


            if (i < 3)
            {
                if (!isupper ((int) InString[i]))
                {
                    Status = AE_BAD_PARAMETER;
                }
            }



            else if (!isxdigit ((int) InString[i]))
            {
                Status = AE_BAD_PARAMETER;
            }
        }
    }

    if (ACPI_FAILURE (Status))
    {
        AslError (ASL_ERROR, ASL_MSG_INVALID_EISAID, Op, Op->Asl.Value.String);
    }
    else
    {


        BigEndianId =
            (UINT32) ((UINT8) (InString[0] - 0x40)) << 26 |
            (UINT32) ((UINT8) (InString[1] - 0x40)) << 21 |
            (UINT32) ((UINT8) (InString[2] - 0x40)) << 16 |

            (AcpiUtAsciiCharToHex (InString[3])) << 12 |
            (AcpiUtAsciiCharToHex (InString[4])) << 8 |
            (AcpiUtAsciiCharToHex (InString[5])) << 4 |
             AcpiUtAsciiCharToHex (InString[6]);



        EisaId = AcpiUtDwordByteSwap (BigEndianId);
    }





    Op->Asl.Value.Integer = EisaId;

    Op->Asl.CompileFlags &= ~OP_COMPILE_TIME_CONST;
    Op->Asl.ParseOpcode = PARSEOP_INTEGER;
    (void) OpcSetOptimalIntegerSize (Op);



    UtSetParseOpName (Op);
}
