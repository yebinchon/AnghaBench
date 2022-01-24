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
struct group {char* gr_name; char* gr_passwd; char** gr_mem; int /*<<< orphan*/  gr_gid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char** FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct group*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(struct group *dest, struct group const *src)
{
	FUNC0(dest != NULL);
	FUNC0(src != NULL);

	char **cp;
	int members_num;

	FUNC2(dest, 0, sizeof(struct group));

	if (src->gr_name != NULL) {
		dest->gr_name = FUNC3(src->gr_name);
		FUNC0(dest->gr_name != NULL);
	}

	if (src->gr_passwd != NULL) {
		dest->gr_passwd = FUNC3(src->gr_passwd);
		FUNC0(dest->gr_passwd != NULL);
	}
	dest->gr_gid = src->gr_gid;

	if (src->gr_mem != NULL) {
		members_num = 0;
		for (cp = src->gr_mem; *cp; ++cp)
			++members_num;

		dest->gr_mem = FUNC1(members_num + 1, sizeof(char *));
		FUNC0(dest->gr_mem != NULL);

		for (cp = src->gr_mem; *cp; ++cp) {
			dest->gr_mem[cp - src->gr_mem] = FUNC3(*cp);
			FUNC0(dest->gr_mem[cp - src->gr_mem] != NULL);
		}
	}
}