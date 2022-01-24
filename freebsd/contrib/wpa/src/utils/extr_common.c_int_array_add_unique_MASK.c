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
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int*,int,int) ; 

void FUNC2(int **res, int a)
{
	int reslen;
	int *n;

	for (reslen = 0; *res && (*res)[reslen]; reslen++) {
		if ((*res)[reslen] == a)
			return; /* already in the list */
	}

	n = FUNC1(*res, reslen + 2, sizeof(int));
	if (n == NULL) {
		FUNC0(*res);
		*res = NULL;
		return;
	}

	n[reslen] = a;
	n[reslen + 1] = 0;

	*res = n;
}