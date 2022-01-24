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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 

__attribute__((used)) static int FUNC4(const char **json_pos, const char *end,
			     int *ret_val)
{
	const char *pos = *json_pos;
	size_t len;
	char *str;

	for (; pos < end; pos++) {
		if (*pos != '-' && (*pos < '0' || *pos > '9')) {
			pos--;
			break;
		}
	}
	if (pos == end)
		pos--;
	if (pos < *json_pos)
		return -1;
	len = pos - *json_pos + 1;
	str = FUNC2(len + 1);
	if (!str)
		return -1;
	FUNC3(str, *json_pos, len);
	str[len] = '\0';

	*ret_val = FUNC0(str);
	FUNC1(str);
	*json_pos = pos;
	return 0;
}