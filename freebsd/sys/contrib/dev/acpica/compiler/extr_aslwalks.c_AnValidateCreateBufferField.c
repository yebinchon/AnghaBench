
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT64 ;
typedef scalar_t__ UINT32 ;
typedef int UINT16 ;
struct TYPE_9__ {scalar_t__ Integer; } ;
struct TYPE_10__ {int ParseOpcode; TYPE_2__ Value; TYPE_4__* Next; TYPE_4__* Child; TYPE_1__* Node; } ;
struct TYPE_11__ {TYPE_3__ Asl; } ;
struct TYPE_8__ {TYPE_4__* Op; } ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_ROUND_BITS_DOWN_TO_BYTES (scalar_t__) ;
 int ASL_MSG_BUFFER_FIELD_LENGTH ;
 int ASL_MSG_BUFFER_FIELD_OVERFLOW ;
 int ASL_WARNING ;
 int AnIsValidBufferConstant (TYPE_4__*) ;
 int AslError (int ,int ,TYPE_4__*,int *) ;







__attribute__((used)) static void
AnValidateCreateBufferField (
    ACPI_PARSE_OBJECT *CreateBufferFieldOp)
{
    ACPI_PARSE_OBJECT *TargetBufferOp;
    ACPI_PARSE_OBJECT *ArgOp;
    UINT32 TargetBufferLength;
    UINT32 LastFieldByteIndex;





    ArgOp = CreateBufferFieldOp->Asl.Child;





    if (!ArgOp->Asl.Node)
    {
        return;
    }

    TargetBufferOp = ArgOp->Asl.Node->Op;
    TargetBufferOp = TargetBufferOp->Asl.Child;
    TargetBufferOp = TargetBufferOp->Asl.Next;
    if (!TargetBufferOp)
    {


        return;
    }



    ArgOp = TargetBufferOp->Asl.Child;
    if (!AnIsValidBufferConstant (ArgOp))
    {
        return;
    }

    TargetBufferLength = (UINT32) ArgOp->Asl.Value.Integer;





    ArgOp = CreateBufferFieldOp->Asl.Child;
    ArgOp = ArgOp->Asl.Next;
    if (!AnIsValidBufferConstant (ArgOp))
    {
        return;
    }

    LastFieldByteIndex =
        (UINT32) ArgOp->Asl.Value.Integer;





    switch (CreateBufferFieldOp->Asl.ParseOpcode)
    {
    case 133:

        LastFieldByteIndex = ACPI_ROUND_BITS_DOWN_TO_BYTES (LastFieldByteIndex);
        break;

    case 132:
        break;

    case 128:

        LastFieldByteIndex += (sizeof (UINT16) - 1);
        break;

    case 131:

        LastFieldByteIndex += (sizeof (UINT32) - 1);
        break;

    case 129:

        LastFieldByteIndex += (sizeof (UINT64) - 1);
        break;

    case 130:

        ArgOp = ArgOp->Asl.Next;
        if (!AnIsValidBufferConstant (ArgOp))
        {
            return;
        }



        if (ArgOp->Asl.Value.Integer == 0)
        {
            AslError (ASL_WARNING, ASL_MSG_BUFFER_FIELD_LENGTH, ArgOp, ((void*)0));
            return;
        }

        LastFieldByteIndex +=
            ((UINT32) ArgOp->Asl.Value.Integer - 1);



        LastFieldByteIndex = ACPI_ROUND_BITS_DOWN_TO_BYTES (LastFieldByteIndex);
        break;

    default:
        return;
    }





    if (!TargetBufferLength || (LastFieldByteIndex >= TargetBufferLength))
    {
        AslError (ASL_WARNING, ASL_MSG_BUFFER_FIELD_OVERFLOW, ArgOp, ((void*)0));
    }
}
