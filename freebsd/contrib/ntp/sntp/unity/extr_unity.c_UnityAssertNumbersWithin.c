
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ _U_UINT ;
typedef scalar_t__ _U_SINT ;
typedef int UNITY_LINE_TYPE ;
typedef int UNITY_DISPLAY_STYLE_T ;
struct TYPE_2__ {int CurrentTestFailed; } ;


 int const UNITY_DISPLAY_RANGE_INT ;
 int UNITY_FAIL_AND_BAIL ;
 int UNITY_SKIP_EXECUTION ;
 TYPE_1__ Unity ;
 int UnityAddMsgIfSpecified (char const*) ;
 int UnityPrint (int ) ;
 int UnityPrintNumberByStyle (scalar_t__ const,int const) ;
 int UnityStrDelta ;
 int UnityStrExpected ;
 int UnityStrWas ;
 int UnityTestResultsFailBegin (int const) ;

void UnityAssertNumbersWithin( const _U_SINT delta,
                               const _U_SINT expected,
                               const _U_SINT actual,
                               const char* msg,
                               const UNITY_LINE_TYPE lineNumber,
                               const UNITY_DISPLAY_STYLE_T style)
{
    UNITY_SKIP_EXECUTION;

    if ((style & UNITY_DISPLAY_RANGE_INT) == UNITY_DISPLAY_RANGE_INT)
    {
        if (actual > expected)
          Unity.CurrentTestFailed = ((actual - expected) > delta);
        else
          Unity.CurrentTestFailed = ((expected - actual) > delta);
    }
    else
    {
        if ((_U_UINT)actual > (_U_UINT)expected)
            Unity.CurrentTestFailed = ((_U_UINT)(actual - expected) > (_U_UINT)delta);
        else
            Unity.CurrentTestFailed = ((_U_UINT)(expected - actual) > (_U_UINT)delta);
    }

    if (Unity.CurrentTestFailed)
    {
        UnityTestResultsFailBegin(lineNumber);
        UnityPrint(UnityStrDelta);
        UnityPrintNumberByStyle(delta, style);
        UnityPrint(UnityStrExpected);
        UnityPrintNumberByStyle(expected, style);
        UnityPrint(UnityStrWas);
        UnityPrintNumberByStyle(actual, style);
        UnityAddMsgIfSpecified(msg);
        UNITY_FAIL_AND_BAIL;
    }
}
