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
typedef  scalar_t__ _U_UINT ;
typedef  scalar_t__ _U_SINT ;
typedef  int /*<<< orphan*/  UNITY_LINE_TYPE ;
typedef  int UNITY_DISPLAY_STYLE_T ;
struct TYPE_2__ {int CurrentTestFailed; } ;

/* Variables and functions */
 int const UNITY_DISPLAY_RANGE_INT ; 
 int /*<<< orphan*/  UNITY_FAIL_AND_BAIL ; 
 int /*<<< orphan*/  UNITY_SKIP_EXECUTION ; 
 TYPE_1__ Unity ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const,int const) ; 
 int /*<<< orphan*/  UnityStrDelta ; 
 int /*<<< orphan*/  UnityStrExpected ; 
 int /*<<< orphan*/  UnityStrWas ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 

void FUNC4( const _U_SINT delta,
                               const _U_SINT expected,
                               const _U_SINT actual,
                               const char* msg,
                               const UNITY_LINE_TYPE lineNumber,
                               const UNITY_DISPLAY_STYLE_T style)
{
    UNITY_SKIP_EXECUTION;

    if ((style & UNITY_DISPLAY_RANGE_INT) == UNITY_DISPLAY_RANGE_INT)
    {
        if (actual > expected)
          Unity.CurrentTestFailed = ((actual - expected) > delta);
        else
          Unity.CurrentTestFailed = ((expected - actual) > delta);
    }
    else
    {
        if ((_U_UINT)actual > (_U_UINT)expected)
            Unity.CurrentTestFailed = ((_U_UINT)(actual - expected) > (_U_UINT)delta);
        else
            Unity.CurrentTestFailed = ((_U_UINT)(expected - actual) > (_U_UINT)delta);
    }

    if (Unity.CurrentTestFailed)
    {
        FUNC3(lineNumber);
        FUNC1(UnityStrDelta);
        FUNC2(delta, style);
        FUNC1(UnityStrExpected);
        FUNC2(expected, style);
        FUNC1(UnityStrWas);
        FUNC2(actual, style);
        FUNC0(msg);
        UNITY_FAIL_AND_BAIL;
    }
}