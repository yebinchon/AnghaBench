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
 char* FUNC0 (char*,char*) ; 
 unsigned int FUNC1 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(char *start, unsigned int *type)
{
	char *pos = FUNC0(start, "<Type>");
	if (pos == NULL)
		return -1;
	pos += 6;
	*type = FUNC1(pos, NULL, 16);
	return 0;
}