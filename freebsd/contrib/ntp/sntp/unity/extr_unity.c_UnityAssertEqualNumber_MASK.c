#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ _U_SINT ;
typedef  int /*<<< orphan*/  UNITY_LINE_TYPE ;
typedef  int /*<<< orphan*/  UNITY_DISPLAY_STYLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  UNITY_FAIL_AND_BAIL ; 
 int /*<<< orphan*/  UNITY_SKIP_EXECUTION ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  UnityStrExpected ; 
 int /*<<< orphan*/  UnityStrWas ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 

void FUNC4(const _U_SINT expected,
                            const _U_SINT actual,
                            const char* msg,
                            const UNITY_LINE_TYPE lineNumber,
                            const UNITY_DISPLAY_STYLE_T style)
{
    UNITY_SKIP_EXECUTION;

    if (expected != actual)
    {
        FUNC3(lineNumber);
        FUNC1(UnityStrExpected);
        FUNC2(expected, style);
        FUNC1(UnityStrWas);
        FUNC2(actual, style);
        FUNC0(msg);
        UNITY_FAIL_AND_BAIL;
    }
}