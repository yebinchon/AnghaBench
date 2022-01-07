
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ _U_SINT ;
typedef int UNITY_LINE_TYPE ;
typedef int UNITY_DISPLAY_STYLE_T ;


 int UNITY_FAIL_AND_BAIL ;
 int UNITY_SKIP_EXECUTION ;
 int UnityAddMsgIfSpecified (char const*) ;
 int UnityPrint (int ) ;
 int UnityPrintNumberByStyle (scalar_t__ const,int const) ;
 int UnityStrExpected ;
 int UnityStrWas ;
 int UnityTestResultsFailBegin (int const) ;

void UnityAssertEqualNumber(const _U_SINT expected,
                            const _U_SINT actual,
                            const char* msg,
                            const UNITY_LINE_TYPE lineNumber,
                            const UNITY_DISPLAY_STYLE_T style)
{
    UNITY_SKIP_EXECUTION;

    if (expected != actual)
    {
        UnityTestResultsFailBegin(lineNumber);
        UnityPrint(UnityStrExpected);
        UnityPrintNumberByStyle(expected, style);
        UnityPrint(UnityStrWas);
        UnityPrintNumberByStyle(actual, style);
        UnityAddMsgIfSpecified(msg);
        UNITY_FAIL_AND_BAIL;
    }
}
