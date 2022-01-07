
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
struct TYPE_8__ {char* Name; int Opcode; } ;
struct TYPE_7__ {struct TYPE_7__* Next; } ;
typedef TYPE_1__ DT_FIELD ;
typedef TYPE_2__ ACPI_DMTABLE_INFO ;


 int ACPI_DMT_EXTRA_TEXT ;



 int ASL_EOF ;
 int ASL_MSG_COMPILER_INTERNAL ;
 int AslGbl_MsgBuffer ;
 int DtFatal (int ,int *,int ) ;
 scalar_t__ DtGetFieldLength (TYPE_1__*,TYPE_2__*) ;
 int sprintf (int ,char*,char*) ;

UINT32
DtGetSubtableLength (
    DT_FIELD *Field,
    ACPI_DMTABLE_INFO *Info)
{
    UINT32 ByteLength = 0;
    UINT8 Step;
    UINT8 i;




    for (; Info->Name; Info++)
    {
        if (Info->Opcode == ACPI_DMT_EXTRA_TEXT)
        {
            continue;
        }

        if (!Field)
        {
            goto Error;
        }

        ByteLength += DtGetFieldLength (Field, Info);

        switch (Info->Opcode)
        {
        case 130:

            Step = 5;
            break;

        case 129:

            Step = 9;
            break;

        case 128:

            Step = 10;
            break;

        default:

            Step = 1;
            break;
        }

        for (i = 0; i < Step; i++)
        {
            if (!Field)
            {
                goto Error;
            }

            Field = Field->Next;
        }
    }

    return (ByteLength);

Error:
    if (!Field)
    {
        sprintf (AslGbl_MsgBuffer, "Found NULL field - Field name \"%s\" needed",
            Info->Name);
        DtFatal (ASL_MSG_COMPILER_INTERNAL, ((void*)0), AslGbl_MsgBuffer);
    }

    return (ASL_EOF);
}
