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
 int FUNC0 (char*,char*) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(char **c)
{
	int len, i;

	len = FUNC1(c[0]);
	for (i = 1; c[i]; i++) {
		int same = FUNC0(c[0], c[i]);
		if (same < len)
			len = same;
	}

	return len;
}