
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* TestFile; int * XFAILMessage; scalar_t__ TestXPASSES; scalar_t__ TestPasses; scalar_t__ isExpectingFail; scalar_t__ TestXFAILS; scalar_t__ CurrentTestIgnored; scalar_t__ CurrentTestFailed; scalar_t__ TestIgnores; scalar_t__ TestFailures; scalar_t__ NumberOfTests; scalar_t__ CurrentTestLineNumber; int * CurrentTestName; } ;


 int UNITY_OUTPUT_START () ;
 TYPE_1__ Unity ;

void UnityBegin(const char* filename)
{
    Unity.TestFile = filename;
    Unity.CurrentTestName = ((void*)0);
    Unity.CurrentTestLineNumber = 0;
    Unity.NumberOfTests = 0;
    Unity.TestFailures = 0;
    Unity.TestIgnores = 0;
    Unity.CurrentTestFailed = 0;
    Unity.CurrentTestIgnored = 0;
    Unity.TestXFAILS = 0;
    Unity.isExpectingFail = 0;
    Unity.TestPasses = 0;
    Unity.TestXPASSES = 0;
    Unity.XFAILMessage = ((void*)0);

    UNITY_OUTPUT_START();
}
