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
 char* FUNC0 (void*,void*) ; 
 char* FUNC1 (char const*,char const) ; 
 char* FUNC2 (void*,void*) ; 
 char* FUNC3 (void*,void*) ; 
 char* FUNC4 (void*,void*) ; 

char *FUNC5(const char *h, const char *n)
{
	/* Return immediately on empty needle */
	if (!n[0]) return (char *)h;

	/* Use faster algorithms for short needles */
	h = FUNC1(h, *n);
	if (!h || !n[1]) return (char *)h;
	if (!h[1]) return 0;
	if (!n[2]) return FUNC3((void *)h, (void *)n);
	if (!h[2]) return 0;
	if (!n[3]) return FUNC2((void *)h, (void *)n);
	if (!h[3]) return 0;
	if (!n[4]) return FUNC0((void *)h, (void *)n);

	return FUNC4((void *)h, (void *)n);
}