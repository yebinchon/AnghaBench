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
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int*,int,int) ; 

void FUNC3(int **res, const int *a)
{
	int reslen, alen, i;
	int *n;

	reslen = FUNC0(*res);
	alen = FUNC0(a);

	n = FUNC2(*res, reslen + alen + 1, sizeof(int));
	if (n == NULL) {
		FUNC1(*res);
		*res = NULL;
		return;
	}
	for (i = 0; i <= alen; i++)
		n[reslen + i] = a[i];
	*res = n;
}