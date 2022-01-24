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
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,long long) ; 

void FUNC1(char *str, size_t ssize, long long cnt)
{
	if (cnt >= 1000000000)
		FUNC0(str, ssize, "%lldb", cnt / 1000000000);
	else if (cnt >= 1000000)
		FUNC0(str, ssize, "%lldm", cnt / 1000000);
	else if (cnt >= 1000)
		FUNC0(str, ssize, "%lldk", cnt / 1000);
	else
		FUNC0(str, ssize, "%lld", cnt);
}