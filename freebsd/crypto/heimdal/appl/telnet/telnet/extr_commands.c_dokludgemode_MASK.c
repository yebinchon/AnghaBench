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

/* Variables and functions */
 int /*<<< orphan*/  TELOPT_ECHO ; 
 int /*<<< orphan*/  TELOPT_LINEMODE ; 
 int /*<<< orphan*/  TELOPT_SGA ; 
 int kludgelinemode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(void)
{
    kludgelinemode = 1;
    FUNC1(TELOPT_LINEMODE, 1);
    FUNC0(TELOPT_SGA, 1);
    FUNC0(TELOPT_ECHO, 1);
    return 1;
}