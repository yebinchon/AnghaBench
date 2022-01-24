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
 scalar_t__ MAX_PUSHED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  onstack ; 
 int /*<<< orphan*/ * stack ; 
 scalar_t__ stackptr ; 

__attribute__((used)) static void
FUNC1(void)
/* push onstack on to the stack */
{
    if (stackptr >= MAX_PUSHED)
	FUNC0("string too complex to convert");
    else
	stack[stackptr++] = onstack;
}