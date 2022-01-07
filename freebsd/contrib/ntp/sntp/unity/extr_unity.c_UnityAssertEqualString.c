
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t _UU32 ;
typedef int UNITY_LINE_TYPE ;
struct TYPE_2__ {int CurrentTestFailed; } ;


 int UNITY_FAIL_AND_BAIL ;
 int UNITY_SKIP_EXECUTION ;
 TYPE_1__ Unity ;
 int UnityAddMsgIfSpecified (char const*) ;
 int UnityPrintExpectedAndActualStrings (char const*,char const*) ;
 int UnityTestResultsFailBegin (int const) ;

void UnityAssertEqualString(const char* expected,
                            const char* actual,
                            const char* msg,
                            const UNITY_LINE_TYPE lineNumber)
{
    _UU32 i;

    UNITY_SKIP_EXECUTION;


    if (expected && actual)
    {
        for (i = 0; expected[i] || actual[i]; i++)
        {
            if (expected[i] != actual[i])
            {
                Unity.CurrentTestFailed = 1;
                break;
            }
        }
    }
    else
    {
        if (expected != actual)
        {
            Unity.CurrentTestFailed = 1;
        }
    }

    if (Unity.CurrentTestFailed)
    {
      UnityTestResultsFailBegin(lineNumber);
      UnityPrintExpectedAndActualStrings(expected, actual);
      UnityAddMsgIfSpecified(msg);
      UNITY_FAIL_AND_BAIL;
    }
}
