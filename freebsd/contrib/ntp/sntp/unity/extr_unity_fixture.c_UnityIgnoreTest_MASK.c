#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int CurrentTestIgnored; int /*<<< orphan*/  NumberOfTests; } ;
struct TYPE_3__ {int /*<<< orphan*/  Verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 TYPE_2__ Unity ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ UnityFixture ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

void FUNC3(const char * printableName)
{
    Unity.NumberOfTests++;
    Unity.CurrentTestIgnored = 1;
    if (!UnityFixture.Verbose)
        FUNC0('!');
    else
        FUNC2(printableName);
    FUNC1();
}