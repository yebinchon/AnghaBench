#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  _U_SINT ;
struct TYPE_2__ {unsigned int TestFailures; unsigned int TestXPASSES; scalar_t__ TestIgnores; scalar_t__ TestXFAILS; scalar_t__ TestPasses; scalar_t__ NumberOfTests; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  UNITY_PRINT_EOL ; 
 TYPE_1__ Unity ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  UnityStrBreaker ; 
 int /*<<< orphan*/  UnityStrResultsFailures ; 
 int /*<<< orphan*/  UnityStrResultsIgnored ; 
 int /*<<< orphan*/  UnityStrResultsPass ; 
 int /*<<< orphan*/  UnityStrResultsTests ; 
 int /*<<< orphan*/  UnityStrResultsXFAIL ; 
 int /*<<< orphan*/  UnityStrResultsXPASS ; 

int FUNC5(void)
{
    UNITY_PRINT_EOL;
    FUNC1(UnityStrBreaker);
    UNITY_PRINT_EOL;
    FUNC3((_U_SINT)(Unity.NumberOfTests));
    FUNC1(UnityStrResultsTests);
    UNITY_PRINT_EOL;
    FUNC3((_U_SINT)(Unity.TestPasses));
    FUNC1(UnityStrResultsPass);
    UNITY_PRINT_EOL;
    FUNC3((_U_SINT)(Unity.TestXFAILS));
    FUNC1(UnityStrResultsXFAIL);
    UNITY_PRINT_EOL;
    FUNC3((_U_SINT)(Unity.TestFailures));
    FUNC1(UnityStrResultsFailures);
    UNITY_PRINT_EOL;
    FUNC3((_U_SINT)(Unity.TestXPASSES));
    FUNC1(UnityStrResultsXPASS);
    UNITY_PRINT_EOL;
    FUNC3((_U_SINT)(Unity.TestIgnores));
    FUNC1(UnityStrResultsIgnored);
    UNITY_PRINT_EOL;

    UNITY_PRINT_EOL;
    if (Unity.TestFailures == 0U && Unity.TestXPASSES == 0U)
    {
        FUNC4();
    }
    else
    {
        FUNC2();
    }
    UNITY_PRINT_EOL;
    FUNC0();
    return (int)(Unity.TestFailures);
}