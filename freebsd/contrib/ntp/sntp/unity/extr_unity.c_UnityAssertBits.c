
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _U_UINT ;
typedef int _U_SINT ;
typedef int UNITY_LINE_TYPE ;


 int UNITY_FAIL_AND_BAIL ;
 int UNITY_SKIP_EXECUTION ;
 int UnityAddMsgIfSpecified (char const*) ;
 int UnityPrint (int ) ;
 int UnityPrintMask (int ,int ) ;
 int UnityStrExpected ;
 int UnityStrWas ;
 int UnityTestResultsFailBegin (int const) ;

void UnityAssertBits(const _U_SINT mask,
                     const _U_SINT expected,
                     const _U_SINT actual,
                     const char* msg,
                     const UNITY_LINE_TYPE lineNumber)
{
    UNITY_SKIP_EXECUTION;

    if ((mask & expected) != (mask & actual))
    {
        UnityTestResultsFailBegin(lineNumber);
        UnityPrint(UnityStrExpected);
        UnityPrintMask((_U_UINT)mask, (_U_UINT)expected);
        UnityPrint(UnityStrWas);
        UnityPrintMask((_U_UINT)mask, (_U_UINT)actual);
        UnityAddMsgIfSpecified(msg);
        UNITY_FAIL_AND_BAIL;
    }
}
