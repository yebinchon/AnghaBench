
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long _U_UINT ;
typedef long _U_SINT ;


 int UNITY_LONG_WIDTH ;
 int UNITY_OUTPUT_CHAR (char) ;

void UnityPrintNumber(const _U_SINT number_to_print)
{
    _U_SINT divisor = 1;
    _U_SINT next_divisor;
    _U_UINT number;

    if (number_to_print == (1l << (UNITY_LONG_WIDTH-1)))
    {

        UNITY_OUTPUT_CHAR('-');
        number = (1ul << (UNITY_LONG_WIDTH-1));
    }
    else if (number_to_print < 0)
    {

        UNITY_OUTPUT_CHAR('-');
        number = (_U_UINT)(-number_to_print);
    }
    else
    {

        number = (_U_UINT)number_to_print;
    }


    while (number / divisor > 9)
    {
        next_divisor = divisor * 10;
        if (next_divisor > divisor)
            divisor = next_divisor;
        else
            break;
    }


    do
    {
        UNITY_OUTPUT_CHAR((char)('0' + (number / divisor % 10)));
        divisor /= 10;
    }
    while (divisor > 0);
}
