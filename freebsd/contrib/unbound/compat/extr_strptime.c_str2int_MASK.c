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
 scalar_t__ FUNC0 (unsigned char) ; 

__attribute__((used)) static int
FUNC1(const char **buf, int max)
{
	int ret=0, count=0;

	while (*buf[0] != '\0' && FUNC0((unsigned char)*buf[0]) && count<max) {
		ret = ret*10 + (*buf[0] - '0');
		(*buf)++;
		count++;
	}

	if (!count)
		return -1;
	return ret;
}