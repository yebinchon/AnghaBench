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
 int ENOMEM ; 
 char** FUNC0 (int,int) ; 
 int FUNC1 (char**,char*) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static int
FUNC3(char ***what, char *val)
{
	char *s, *v;
	int count, error, idx;

	count = 0;
	v = val;
	do {
		count++;
		s = FUNC2(v, ',');
		v = (s == NULL) ? NULL : s + 1;
	} while (v != NULL);

	*what = FUNC0(count + 1, sizeof(char *));
	if (*what == NULL)
		return (ENOMEM);

	for (idx = 0; idx < count; idx++) {
		s = FUNC2(val, ',');
		if (s != NULL)
			*s++ = '\0';
		error = FUNC1(*what + idx, val);
		if (error)
			return (error);
		val = s;
	}

	return (0);
}