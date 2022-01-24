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
typedef  size_t _UU32 ;
typedef  int /*<<< orphan*/  UNITY_LINE_TYPE ;
struct TYPE_2__ {int CurrentTestFailed; } ;

/* Variables and functions */
 int /*<<< orphan*/  UNITY_FAIL_AND_BAIL ; 
 int /*<<< orphan*/  UNITY_SKIP_EXECUTION ; 
 TYPE_1__ Unity ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 

void FUNC3(const char* expected,
                            const char* actual,
                            const char* msg,
                            const UNITY_LINE_TYPE lineNumber)
{
    _UU32 i;

    UNITY_SKIP_EXECUTION;

    // if both pointers not null compare the strings
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
    { // handle case of one pointers being null (if both null, test should pass)
        if (expected != actual)
        {
            Unity.CurrentTestFailed = 1;
        }
    }

    if (Unity.CurrentTestFailed)
    {
      FUNC2(lineNumber);
      FUNC1(expected, actual);
      FUNC0(msg);
      UNITY_FAIL_AND_BAIL;
    }
}