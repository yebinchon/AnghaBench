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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC8(mode_t mode)
{

	if (FUNC0(mode))
		return ("block device");
	else if (FUNC1(mode))
		return ("character device");
	else if (FUNC2(mode))
		return ("directory");
	else if (FUNC3(mode))
		return ("pipe or FIFO");
	else if (FUNC4(mode))
		return ("symbolic link");
	else if (FUNC5(mode))
		return ("regular file");
	else if (FUNC6(mode))
		return ("socket");
	else if (FUNC7(mode))
		return ("whiteout");
	else
		return ("unknown");
}