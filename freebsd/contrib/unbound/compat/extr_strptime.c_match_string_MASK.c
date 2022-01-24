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
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 

__attribute__((used)) static int
FUNC2(const char **buf, const char **strs)
{
	int i = 0;

	for (i = 0; strs[i] != NULL; i++) {
		int len = FUNC0(strs[i]);
		if (FUNC1 (*buf, strs[i], len) == 0) {
			*buf += len;
			return i;
		}
	}
	return -1;
}