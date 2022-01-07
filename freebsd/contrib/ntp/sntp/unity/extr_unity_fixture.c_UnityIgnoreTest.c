
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int CurrentTestIgnored; int NumberOfTests; } ;
struct TYPE_3__ {int Verbose; } ;


 int UNITY_OUTPUT_CHAR (char) ;
 TYPE_2__ Unity ;
 int UnityConcludeFixtureTest () ;
 TYPE_1__ UnityFixture ;
 int UnityPrint (char const*) ;

void UnityIgnoreTest(const char * printableName)
{
    Unity.NumberOfTests++;
    Unity.CurrentTestIgnored = 1;
    if (!UnityFixture.Verbose)
        UNITY_OUTPUT_CHAR('!');
    else
        UnityPrint(printableName);
    UnityConcludeFixtureTest();
}
