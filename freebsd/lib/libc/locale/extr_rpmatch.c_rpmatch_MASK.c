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
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int /*<<< orphan*/  NOEXPR ; 
 int REG_EXTENDED ; 
 int REG_NOSUB ; 
 int /*<<< orphan*/  YESEXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(const char *response)
{
	regex_t yes, no;
	int ret;

	if (FUNC1(&yes, FUNC0(YESEXPR), REG_EXTENDED|REG_NOSUB) != 0)
		return (-1);
	if (FUNC1(&no, FUNC0(NOEXPR), REG_EXTENDED|REG_NOSUB) != 0) {
		FUNC3(&yes);
		return (-1);
	}
	if (FUNC2(&yes, response, 0, NULL, 0) == 0)
		ret = 1;
	else if (FUNC2(&no, response, 0, NULL, 0) == 0)
		ret = 0;
	else
		ret = -1;
	FUNC3(&yes);
	FUNC3(&no);
	return (ret);
}