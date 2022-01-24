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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TD_OPTIONS ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ will ; 
 scalar_t__* will_wont_resp ; 

void
FUNC6(int option, int init)
{
	if (init) {
		if ((will_wont_resp[option] == 0 && FUNC1(option))||
		    FUNC2(option))
			return;
		FUNC5(option);
		will_wont_resp[option]++;
	}
	FUNC3((const char *)will, option);

	FUNC0(TD_OPTIONS, FUNC4("td: send will", option));
}