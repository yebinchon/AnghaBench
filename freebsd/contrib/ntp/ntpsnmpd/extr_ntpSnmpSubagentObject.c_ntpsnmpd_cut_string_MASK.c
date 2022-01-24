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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC1 (size_t,size_t) ; 
 size_t FUNC2 (char const*) ; 

size_t
FUNC3(
	const char *	string,
	char *		dest,
	char		delim,
	int		fieldnumber,
	size_t		maxsize
	)
{
	size_t i;
	size_t j;
	int l;
	size_t str_cnt;

	if (maxsize < 1)
		return 0;

	str_cnt = FUNC2(string);
	j = 0;
	FUNC0(dest, 0, maxsize);

	/* Parsing the field name */
	for (i = 0, l = 0; i < str_cnt && l <= fieldnumber; i++) {
		if (string[i] == delim)
			l++;	/* next field */
		else if (l == fieldnumber && j < maxsize)
			dest[j++] = string[i]; 
	}
	j = FUNC1(j, maxsize - 1);
	dest[j] = '\0';

	return j;
}