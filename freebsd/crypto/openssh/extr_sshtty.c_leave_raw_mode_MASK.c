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
 int /*<<< orphan*/  TCSADRAIN ; 
 scalar_t__ _in_raw_mode ; 
 int /*<<< orphan*/  _saved_tio ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(int quiet)
{
	if (!_in_raw_mode)
		return;
	if (FUNC2(FUNC0(stdin), TCSADRAIN, &_saved_tio) == -1) {
		if (!quiet)
			FUNC1("tcsetattr");
	} else
		_in_raw_mode = 0;
}