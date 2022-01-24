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
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static char * FUNC3(const char *url)
{
	const char *pos, *end, *end2;
	char *ret;

	if (url == NULL)
		return NULL;

	pos = FUNC2(url, '/');
	if (pos == NULL)
		return NULL;
	pos++;
	if (*pos != '/')
		return NULL;
	pos++;

	end = FUNC2(pos, '/');
	end2 = FUNC2(pos, ':');
	if ((end && end2 && end2 < end) || (!end && end2))
		end = end2;
	if (end)
		end--;
	else {
		end = pos;
		while (*end)
			end++;
		if (end > pos)
			end--;
	}

	ret = FUNC0(end - pos + 2);
	if (ret == NULL)
		return NULL;

	FUNC1(ret, pos, end - pos + 1);
	ret[end - pos + 1] = '\0';

	return ret;
}