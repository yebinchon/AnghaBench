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
 int /*<<< orphan*/  SHTTY ; 
 int /*<<< orphan*/  Tty_eight_bit ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  extty ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

void
FUNC4(void)
{
    if (FUNC2(SHTTY, &extty) == -1) {
#ifdef DEBUG_TTY
	xprintf("ed_set_tty_eight_bit: tty_getty: %s\n", strerror(errno));
#endif /* DEBUG_TTY */
	return;
    }
    Tty_eight_bit = FUNC1(&extty);
}