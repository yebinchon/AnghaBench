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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char const*) ; 

int
FUNC4(const char *host, const char *pattern)
{
	char *hostcopy = FUNC3(host);
	int r;

	FUNC1(hostcopy);
	r = FUNC2(hostcopy, pattern, 1);
	FUNC0(hostcopy);
	return r;
}