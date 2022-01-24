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
 int /*<<< orphan*/  FUNC0 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC1(char* buf, size_t* result)
{
	char* e = NULL;
	size_t v = (size_t)FUNC0(buf, &e, 16);
	if(e == buf)
		return 0;
	*result = v;
	return 1;
}