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
typedef  scalar_t__ u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1(const u_char *a, int la, const u_char *b, int lb) {
	int l;
	int i;

	for (i = 0; i < la; i++)
		FUNC0("%02x", (unsigned int)a[i]);
	FUNC0("\n");
	l = (la <= lb) ? la : lb;
	for (i = 0; i < l; i++)
		if (a[i] == b[i])
			FUNC0("__");
		else
			FUNC0("%02x", (unsigned int)b[i]);
	for (; i < lb; i++)
		FUNC0("%02x", (unsigned int)b[i]);
	FUNC0("\n");
}