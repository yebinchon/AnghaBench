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
struct TYPE_2__ {unsigned int RepeatCount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 TYPE_1__ UnityFixture ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static void FUNC3(unsigned int runNumber)
{
    FUNC1("Unity test run ");
    FUNC2(runNumber+1);
    FUNC1(" of ");
    FUNC2(UnityFixture.RepeatCount);
    FUNC0('\n');
}