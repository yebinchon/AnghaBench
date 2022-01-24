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
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,char const*) ; 
 char* FUNC3 (char*,char) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(const char *dir_name, const char *file_name, char *str, int max_len)
{
	char path[256], *s;
	size_t len;

	FUNC2(path, sizeof(path), "%s/%s", dir_name, file_name);

	len = max_len;
	if (FUNC4(FUNC0(path), str, &len, NULL, 0) == -1)
		return FUNC1();

	str[(len < max_len) ? len : max_len - 1] = 0;

	if ((s = FUNC3(str, '\n')))
		*s = 0;

	return 0;
}