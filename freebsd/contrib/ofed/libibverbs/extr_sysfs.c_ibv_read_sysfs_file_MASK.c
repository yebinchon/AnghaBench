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
 scalar_t__ FUNC0 (char**,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(const char *dir, const char *file,
			char *buf, size_t size)
{
	char *path, *s;
	int ret;
	size_t len;

	if (FUNC0(&path, "%s/%s", dir, file) < 0)
		return -1;

	for (s = &path[0]; *s != '\0'; s++)
		if (*s == '/')
			*s = '.';

	len = size;
	ret = FUNC2(&path[1], buf, &len, NULL, 0);
	FUNC1(path);

	if (ret == -1)
		return -1;

	if (len > 0 && buf[len - 1] == '\n')
		buf[--len] = '\0';

	return len;
}