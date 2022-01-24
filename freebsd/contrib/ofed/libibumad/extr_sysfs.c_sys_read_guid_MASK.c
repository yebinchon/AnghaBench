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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char**,char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (char const*,char const*,char*,int) ; 

int FUNC4(const char *dir_name, const char *file_name, __be64 *net_guid)
{
	char buf[32], *str, *s;
	uint64_t guid;
	int r, i;

	if ((r = FUNC3(dir_name, file_name, buf, sizeof(buf))) < 0)
		return r;

	guid = 0;

	for (s = buf, i = 0; i < 4; i++) {
		if (!(str = FUNC1(&s, ": \t\n")))
			return -EINVAL;
		guid = (guid << 16) | (FUNC2(str, NULL, 16) & 0xffff);
	}

	*net_guid = FUNC0(guid);

	return 0;
}