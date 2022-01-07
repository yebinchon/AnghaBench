
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float _UF ;
typedef int UNITY_LINE_TYPE ;


 int UNITY_FAIL_AND_BAIL ;
 int UNITY_SKIP_EXECUTION ;
 int UnityAddMsgIfSpecified (char const*) ;
 int UnityPrint (int ) ;
 int UnityPrintFloat (float const) ;
 int UnityStrDelta ;
 int UnityStrExpected ;
 int UnityStrWas ;
 int UnityTestResultsFailBegin (int const) ;

void UnityAssertFloatsWithin(const _UF delta,
                             const _UF expected,
                             const _UF actual,
                             const char* msg,
                             const UNITY_LINE_TYPE lineNumber)
{
    _UF diff = actual - expected;
    _UF pos_delta = delta;

    UNITY_SKIP_EXECUTION;

    if (diff < 0.0f)
    {
        diff = 0.0f - diff;
    }
    if (pos_delta < 0.0f)
    {
        pos_delta = 0.0f - pos_delta;
    }


    if ((diff * 0.0f != 0.0f) || (pos_delta < diff))
    {
        UnityTestResultsFailBegin(lineNumber);






        UnityPrint(UnityStrDelta);

        UnityAddMsgIfSpecified(msg);
        UNITY_FAIL_AND_BAIL;
    }
}
