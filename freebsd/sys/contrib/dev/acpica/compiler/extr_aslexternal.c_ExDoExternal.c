
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ Integer; } ;
struct TYPE_9__ {TYPE_3__* Next; TYPE_3__* Child; TYPE_1__ Value; int ParseOpcode; int AmlOpcode; } ;
struct TYPE_10__ {TYPE_2__ Asl; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int AML_RAW_DATA_BYTE ;
 TYPE_3__* AslGbl_ExternalsListHead ;
 int PARSEOP_BYTECONST ;
 int PARSEOP_DEFAULT_ARG ;
 TYPE_3__* TrAllocateOp (int ) ;
 int UtSetParseOpName (TYPE_3__*) ;

void
ExDoExternal (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *ListOp;
    ACPI_PARSE_OBJECT *Prev;
    ACPI_PARSE_OBJECT *Next;
    ACPI_PARSE_OBJECT *ArgCountOp;


    ArgCountOp = Op->Asl.Child->Asl.Next->Asl.Next;
    ArgCountOp->Asl.AmlOpcode = AML_RAW_DATA_BYTE;
    ArgCountOp->Asl.ParseOpcode = PARSEOP_BYTECONST;
    ArgCountOp->Asl.Value.Integer = 0;
    UtSetParseOpName (ArgCountOp);



    ListOp = TrAllocateOp (PARSEOP_DEFAULT_ARG);



    ListOp->Asl.Child = Op;
    ListOp->Asl.Next = ((void*)0);

    if (AslGbl_ExternalsListHead)
    {


        Prev = AslGbl_ExternalsListHead;
        Next = Prev;
        while (Next)
        {
            Prev = Next;
            Next = Next->Asl.Next;
        }

        Prev->Asl.Next = ListOp;
    }
    else
    {
        AslGbl_ExternalsListHead = ListOp;
    }
}
