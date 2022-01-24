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
typedef  union umad_gid {int dummy; } umad_gid ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char**,char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (char const*,char const*,char*,int) ; 

int FUNC4(const char *dir_name, const char *file_name,
		 union umad_gid *gid)
{
	char buf[64], *str, *s;
	__be16 *ugid = (__be16 *) gid;
	int r, i;

	if ((r = FUNC3(dir_name, file_name, buf, sizeof(buf))) < 0)
		return r;

	for (s = buf, i = 0; i < 8; i++) {
		if (!(str = FUNC1(&s, ": \t\n")))
			return -EINVAL;
		ugid[i] = FUNC0(FUNC2(str, NULL, 16) & 0xffff);
	}

	return 0;
}