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
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ ENOSYS ; 
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  MODCTL_EXISTS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void)
{
	int err;

	err = FUNC2(MODCTL_EXISTS, 0);
	if (err == 0) return;
	if (errno == ENOSYS)
		FUNC1("Kernel does not have 'options MODULAR'.");
	else if (errno == EPERM)
		FUNC1("Module loading administratively forbidden");
	FUNC0(errno, 0, "unexpected error %d from "
	    "modctl(MODCTL_EXISTS, 0)", errno);
}