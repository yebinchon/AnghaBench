
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int AmlOpcode; int AmlOpcodeLength; int CompileFlags; int AmlLength; int AmlSubtreeLength; scalar_t__ AmlPkgLenBytes; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;






 scalar_t__ CgGetPackageLenByteCount (TYPE_2__*,int ) ;
 int OP_AML_PACKAGE ;

__attribute__((used)) static void
CgGenerateAmlOpcodeLength (
    ACPI_PARSE_OBJECT *Op)
{



    if (Op->Asl.AmlOpcode > 0x00FF)
    {
        Op->Asl.AmlOpcodeLength = 2;
    }
    else
    {
        Op->Asl.AmlOpcodeLength = 1;
    }



    Op->Asl.AmlPkgLenBytes = 0;
    if (Op->Asl.CompileFlags & OP_AML_PACKAGE)
    {
        Op->Asl.AmlPkgLenBytes = CgGetPackageLenByteCount (
            Op, Op->Asl.AmlSubtreeLength);
    }



    switch (Op->Asl.AmlOpcode)
    {
    case 131:

        Op->Asl.AmlLength = 1;
        break;

    case 128:

        Op->Asl.AmlLength = 2;
        break;

    case 130:

        Op->Asl.AmlLength = 4;
        break;

    case 129:

        Op->Asl.AmlLength = 8;
        break;

    default:


        break;
    }
}
