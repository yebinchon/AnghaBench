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
 scalar_t__ ERANGE ; 
 scalar_t__ errno ; 
 char* FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 char* FUNC4 (char const*) ; 
 size_t FUNC5 (char const*) ; 

char * FUNC6(const char *rel_path)
{
	char *buf = NULL, *cwd, *ret;
	size_t len = 128, cwd_len, rel_len, ret_len;

	if (rel_path[0] == '/')
		return FUNC4(rel_path);

	for (;;) {
		buf = FUNC2(len);
		if (buf == NULL)
			return NULL;
		cwd = FUNC0(buf, len);
		if (cwd == NULL) {
			FUNC1(buf);
			if (errno != ERANGE) {
				return NULL;
			}
			len *= 2;
		} else {
			break;
		}
	}

	cwd_len = FUNC5(cwd);
	rel_len = FUNC5(rel_path);
	ret_len = cwd_len + 1 + rel_len + 1;
	ret = FUNC2(ret_len);
	if (ret) {
		FUNC3(ret, cwd, cwd_len);
		ret[cwd_len] = '/';
		FUNC3(ret + cwd_len + 1, rel_path, rel_len);
		ret[ret_len - 1] = '\0';
	}
	FUNC1(buf);
	return ret;
}