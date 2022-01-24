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
 int FUNC0 (char const*,int*,size_t*) ; 

int
FUNC1(const char *string, int *name, size_t *namelen)
{
	size_t len;
	int error;

	len = *namelen;
	error = FUNC0(string, name, &len);
	if (error)
		return (error);

	*namelen = len;
	return (0);
}