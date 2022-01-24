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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_MAX ; 
 char* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static char *
FUNC2(FILE *VFile, char *ptr)
{
	char *ret;

	ret = FUNC0(ptr, PATH_MAX, VFile);
	if (!ret)
		return NULL;

	if (ptr[FUNC1(ptr) - 1] == '\n')
		ptr[FUNC1(ptr) - 1] = '\0';

	return ret;
}