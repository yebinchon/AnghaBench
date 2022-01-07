
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int _U_SINT ;
struct TYPE_2__ {unsigned int TestFailures; unsigned int TestXPASSES; scalar_t__ TestIgnores; scalar_t__ TestXFAILS; scalar_t__ TestPasses; scalar_t__ NumberOfTests; } ;


 int UNITY_OUTPUT_COMPLETE () ;
 int UNITY_PRINT_EOL ;
 TYPE_1__ Unity ;
 int UnityPrint (int ) ;
 int UnityPrintFail () ;
 int UnityPrintNumber (int ) ;
 int UnityPrintOk () ;
 int UnityStrBreaker ;
 int UnityStrResultsFailures ;
 int UnityStrResultsIgnored ;
 int UnityStrResultsPass ;
 int UnityStrResultsTests ;
 int UnityStrResultsXFAIL ;
 int UnityStrResultsXPASS ;

int UnityEnd(void)
{
    UNITY_PRINT_EOL;
    UnityPrint(UnityStrBreaker);
    UNITY_PRINT_EOL;
    UnityPrintNumber((_U_SINT)(Unity.NumberOfTests));
    UnityPrint(UnityStrResultsTests);
    UNITY_PRINT_EOL;
    UnityPrintNumber((_U_SINT)(Unity.TestPasses));
    UnityPrint(UnityStrResultsPass);
    UNITY_PRINT_EOL;
    UnityPrintNumber((_U_SINT)(Unity.TestXFAILS));
    UnityPrint(UnityStrResultsXFAIL);
    UNITY_PRINT_EOL;
    UnityPrintNumber((_U_SINT)(Unity.TestFailures));
    UnityPrint(UnityStrResultsFailures);
    UNITY_PRINT_EOL;
    UnityPrintNumber((_U_SINT)(Unity.TestXPASSES));
    UnityPrint(UnityStrResultsXPASS);
    UNITY_PRINT_EOL;
    UnityPrintNumber((_U_SINT)(Unity.TestIgnores));
    UnityPrint(UnityStrResultsIgnored);
    UNITY_PRINT_EOL;

    UNITY_PRINT_EOL;
    if (Unity.TestFailures == 0U && Unity.TestXPASSES == 0U)
    {
        UnityPrintOk();
    }
    else
    {
        UnityPrintFail();
    }
    UNITY_PRINT_EOL;
    UNITY_OUTPUT_COMPLETE();
    return (int)(Unity.TestFailures);
}
