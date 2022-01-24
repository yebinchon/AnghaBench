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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (unsigned int const) ; 
 int FUNC2 (char*,unsigned int const,char*,int) ; 
 scalar_t__ FUNC3 (unsigned int const,int) ; 

__attribute__((used)) static char * FUNC4(int val)
{
	const unsigned int bufsize = 20;
	char *buf;
	int res;

	buf = FUNC1(bufsize);
	if (buf == NULL)
		return NULL;
	res = FUNC2(buf, bufsize, "%d", val);
	if (FUNC3(bufsize, res)) {
		FUNC0(buf);
		buf = NULL;
	}
	return buf;
}