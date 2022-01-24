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
 int Argument ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ DoingArg ; 
 scalar_t__ InputBuf ; 
 scalar_t__ LastChar ; 
 scalar_t__ NeedsRedraw ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int curchoice ; 

__attribute__((used)) static int
FUNC3(void)
{
    if (NeedsRedraw) {
	FUNC1();
	FUNC0();
	NeedsRedraw = 0;
    }
    FUNC2();
    Argument = 1;
    DoingArg = 0;
    curchoice = -1;
    return (int) (LastChar - InputBuf);
}