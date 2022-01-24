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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void
FUNC2(char *pw, char *key)
{
	int i;

	FUNC0(key, 8);
	for (i = 0; *pw; i = (i+1)%8) {
		key[i] ^= *pw++ << 1;
	}
	FUNC1(key);
}