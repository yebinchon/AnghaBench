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
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 (char const*,char) ; 
 size_t FUNC3 (char const*) ; 
 char* FUNC4 (char const*,char const*) ; 

char * FUNC5(const char *cmd, const char *param)
{
	const char *pos, *end;
	char *val;
	size_t len;

	pos = FUNC4(cmd, param);
	if (!pos)
		return NULL;

	pos += FUNC3(param);
	end = FUNC2(pos, ' ');
	if (end)
		len = end - pos;
	else
		len = FUNC3(pos);
	val = FUNC0(len + 1);
	if (!val)
		return NULL;
	FUNC1(val, pos, len);
	val[len] = '\0';
	return val;
}