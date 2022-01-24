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
 long long FUNC0 (char const*,int /*<<< orphan*/ ,int,char const**) ; 

int
FUNC1(const char *s)
{
	long long port;
	const char *errstr;

	port = FUNC0(s, 0, 65535, &errstr);
	if (errstr != NULL)
		return -1;
	return (int)port;
}