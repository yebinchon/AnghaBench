
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int (* UnityTestFunction ) () ;
typedef scalar_t__ UNITY_LINE_TYPE ;
struct TYPE_2__ {char const* CurrentTestName; int CurrentTestIgnored; int NumberOfTests; scalar_t__ CurrentTestLineNumber; } ;


 scalar_t__ TEST_PROTECT () ;
 TYPE_1__ Unity ;
 int UnityConcludeTest () ;
 int setUp () ;
 int tearDown () ;

void UnityDefaultTestRun(UnityTestFunction Func, const char* FuncName, const int FuncLineNum)
{
    Unity.CurrentTestName = FuncName;
    Unity.CurrentTestLineNumber = (UNITY_LINE_TYPE)FuncLineNum;
    Unity.NumberOfTests++;

    if (TEST_PROTECT())
    {
        setUp();
        Func();
    }
    if (TEST_PROTECT() && !(Unity.CurrentTestIgnored))
    {
        tearDown();
    }

    UnityConcludeTest();
}
