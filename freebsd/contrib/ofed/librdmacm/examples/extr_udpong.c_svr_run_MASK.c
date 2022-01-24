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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  g_addr ; 
 int g_addrlen ; 
 int /*<<< orphan*/  g_msg ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC3(void)
{
	ssize_t len;
	int ret;

	ret = FUNC0();
	while (!ret) {
		g_addrlen = sizeof g_addr;
		len = FUNC2(&g_msg, sizeof g_msg, &g_addr, &g_addrlen);
		if (len < 0)
			return len;

		ret = FUNC1(&g_msg, len, &g_addr, g_addrlen);
	}
	return ret;
}