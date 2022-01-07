
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ CurrentTestIgnored; scalar_t__ CurrentTestFailed; int TestFailures; int TestIgnores; } ;
struct TYPE_3__ {scalar_t__ Verbose; } ;


 int UNITY_OUTPUT_CHAR (char) ;
 TYPE_2__ Unity ;
 TYPE_1__ UnityFixture ;
 int UnityPrint (char*) ;

void UnityConcludeFixtureTest(void)
{
    if (Unity.CurrentTestIgnored)
    {
        if (UnityFixture.Verbose)
        {
            UNITY_OUTPUT_CHAR('\n');
        }
        Unity.TestIgnores++;
    }
    else if (!Unity.CurrentTestFailed)
    {
        if (UnityFixture.Verbose)
        {
            UnityPrint(" PASS");
            UNITY_OUTPUT_CHAR('\n');
        }
    }
    else if (Unity.CurrentTestFailed)
    {
        Unity.TestFailures++;
    }

    Unity.CurrentTestFailed = 0;
    Unity.CurrentTestIgnored = 0;
}
