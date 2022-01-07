
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int UINT32 ;


 int ACPI_FORMAT_UINT64 (int) ;
 int ASL_DEBUG_OUTPUT ;
 int ASL_ERROR ;
 int ASL_MSG_DIVIDE_BY_ZERO ;
 int ASL_MSG_INVALID_EXPRESSION ;
 int AslGbl_CurrentField ;
 int DbgPrint (int ,char*,int ,int ,int ,int ) ;
 int DtError (int ,int ,int ,int *) ;
 int DtFatal (int ,int ,int *) ;
 int DtGetOpName (int) ;
UINT64
DtDoOperator (
    UINT64 LeftValue,
    UINT32 Operator,
    UINT64 RightValue)
{
    UINT64 Result;




    switch (Operator)
    {
    case 133:

        Result = ~RightValue;
        break;

    case 138:

        Result = !RightValue;
        break;

    case 135:

        Result = LeftValue * RightValue;
        break;

    case 145:

        if (!RightValue)
        {
            DtError (ASL_ERROR, ASL_MSG_DIVIDE_BY_ZERO,
                AslGbl_CurrentField, ((void*)0));
            return (0);
        }

        Result = LeftValue / RightValue;
        break;

    case 136:

        if (!RightValue)
        {
            DtError (ASL_ERROR, ASL_MSG_DIVIDE_BY_ZERO,
                AslGbl_CurrentField, ((void*)0));
            return (0);
        }

        Result = LeftValue % RightValue;
        break;

    case 147:
        Result = LeftValue + RightValue;
        break;

    case 129:

        Result = LeftValue - RightValue;
        break;

    case 130:

        Result = LeftValue >> RightValue;
        break;

    case 131:

        Result = LeftValue << RightValue;
        break;

    case 141:

        Result = LeftValue < RightValue;
        break;

    case 143:

        Result = LeftValue > RightValue;
        break;

    case 140:

        Result = LeftValue <= RightValue;
        break;

    case 142:

        Result = LeftValue >= RightValue;
        break;

    case 144:

        Result = LeftValue == RightValue;
        break;

    case 134:

        Result = LeftValue != RightValue;
        break;

    case 146:

        Result = LeftValue & RightValue;
        break;

    case 128:

        Result = LeftValue ^ RightValue;
        break;

    case 132:

        Result = LeftValue | RightValue;
        break;

    case 139:

        Result = LeftValue && RightValue;
        break;

    case 137:

        Result = LeftValue || RightValue;
        break;

   default:



        DtFatal (ASL_MSG_INVALID_EXPRESSION,
            AslGbl_CurrentField, ((void*)0));
        return (0);
    }

    DbgPrint (ASL_DEBUG_OUTPUT,
        "IntegerEval: (%8.8X%8.8X %s %8.8X%8.8X) = %8.8X%8.8X\n",
        ACPI_FORMAT_UINT64 (LeftValue),
        DtGetOpName (Operator),
        ACPI_FORMAT_UINT64 (RightValue),
        ACPI_FORMAT_UINT64 (Result));

    return (Result);
}
