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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,void const*,size_t) ; 

char * FUNC2(const void *src, size_t len)
{
	char *res;

	if (src == NULL)
		return NULL;
	res = FUNC0(len + 1);
	if (res == NULL)
		return NULL;
	FUNC1(res, src, len);
	res[len] = '\0';

	return res;
}