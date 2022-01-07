
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT64 ;
struct TYPE_10__ {int AmlLength; int AmlOpcode; } ;
struct TYPE_8__ {int Integer; } ;
struct TYPE_9__ {TYPE_1__ Value; } ;
struct TYPE_11__ {TYPE_3__ Asl; TYPE_2__ Common; } ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;


 int AML_RAW_DATA_BYTE ;
 int AML_RAW_DATA_DWORD ;
 int AML_RAW_DATA_QWORD ;
 int AML_RAW_DATA_WORD ;
 int OpcSetOptimalIntegerSize (TYPE_4__*) ;
 int PARSEOP_BYTECONST ;
 int PARSEOP_DWORDCONST ;
 int PARSEOP_INTEGER ;
 int PARSEOP_QWORDCONST ;
 int PARSEOP_WORDCONST ;
 int TrSetOpIntegerValue (int ,TYPE_4__*) ;

__attribute__((used)) static void
OpcUpdateIntegerNode (
    ACPI_PARSE_OBJECT *Op,
    UINT64 Value)
{

    Op->Common.Value.Integer = Value;





    switch (Op->Asl.AmlLength)
    {
    case 1:

        TrSetOpIntegerValue (PARSEOP_BYTECONST, Op);
        Op->Asl.AmlOpcode = AML_RAW_DATA_BYTE;
        break;

    case 2:

        TrSetOpIntegerValue (PARSEOP_WORDCONST, Op);
        Op->Asl.AmlOpcode = AML_RAW_DATA_WORD;
        break;

    case 4:

        TrSetOpIntegerValue (PARSEOP_DWORDCONST, Op);
        Op->Asl.AmlOpcode = AML_RAW_DATA_DWORD;
        break;

    case 8:

        TrSetOpIntegerValue (PARSEOP_QWORDCONST, Op);
        Op->Asl.AmlOpcode = AML_RAW_DATA_QWORD;
        break;

    case 0:
    default:

        OpcSetOptimalIntegerSize (Op);
        TrSetOpIntegerValue (PARSEOP_INTEGER, Op);
        break;
    }

    Op->Asl.AmlLength = 0;
}
