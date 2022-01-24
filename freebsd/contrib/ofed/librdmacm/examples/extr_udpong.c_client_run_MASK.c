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
 int TEST_CNT ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  custom ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  rs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * test_size ; 

__attribute__((used)) static int FUNC6(void)
{
	int i, ret;

	FUNC3("%-10s%-8s%-8s%-8s%8s %10s%13s\n",
	       "name", "bytes", "xfers", "total", "time", "Gb/sec", "usec/xfer");

	ret = FUNC0();
	if (ret)
		return ret;

	if (!custom) {
		for (i = 0; i < TEST_CNT; i++) {
			FUNC2(test_size[i]);
			FUNC5();
		}
		for (i = 0; i < TEST_CNT; i++) {
			FUNC1(test_size[i]);
			FUNC5();
		}
	} else {
		FUNC5();
	}
	FUNC4(rs);

	return ret;
}