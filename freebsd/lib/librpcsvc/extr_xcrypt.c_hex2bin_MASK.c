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
 int FUNC0 (char) ; 

__attribute__((used)) static void
FUNC1(int len, char *hexnum, char *binnum)
{
	int i;

	for (i = 0; i < len; i++) {
		*binnum++ = 16 * FUNC0(hexnum[2*i]) + FUNC0(hexnum[2*i+1]);
	}
}