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
 int crmod ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC2()
{
    crmod = !crmod;
    FUNC1("Deprecated usage - please use 'toggle crmod' in the future.\r\n");
    FUNC1("%s map carriage return on output.\r\n", crmod ? "Will" : "Won't");
    FUNC0(stdout);
    return 1;
}