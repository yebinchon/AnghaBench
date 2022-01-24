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
typedef  enum presence_check { ____Placeholder_presence_check } presence_check ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  both_checks 130 
 int FUNC2 () ; 
 int FUNC3 () ; 
#define  stat_check 129 
#define  sysctl_check 128 

__attribute__((used)) static bool
FUNC4(enum presence_check how)
{
	bool found;

	switch (how) {
	case both_checks:
		found = FUNC2();
		FUNC0(FUNC3() == found);
		break;

	case stat_check:
		found = FUNC2();
		break;

	case sysctl_check:
		found = FUNC3();
		break;

	default:
		found = false;
		FUNC1(found);
	}

	return found;
}