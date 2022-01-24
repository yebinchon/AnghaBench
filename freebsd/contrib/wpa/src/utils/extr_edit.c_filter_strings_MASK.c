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
 scalar_t__ FUNC1 (char*,char*,size_t) ; 

__attribute__((used)) static int FUNC2(char **c, char *str, size_t len)
{
	int i, j;

	for (i = 0, j = 0; c[j]; j++) {
		if (FUNC1(c[j], str, len) == 0) {
			if (i != j) {
				c[i] = c[j];
				c[j] = NULL;
			}
			i++;
		} else {
			FUNC0(c[j]);
			c[j] = NULL;
		}
	}
	c[i] = NULL;
	return i;
}