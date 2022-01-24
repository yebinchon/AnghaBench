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
struct group {int /*<<< orphan*/  gr_gid; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_NOUSER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 struct group* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char) ; 

gid_t
FUNC4(char *s)
{
	struct group *gr;
	char *gname;
	gid_t gid;

	if ((gr = FUNC2(s)) != NULL)
		gid = gr->gr_gid;
	else {
		for (gname = s; *s && FUNC3(*s); ++s);
		if (!*s)
			gid = FUNC0(gname);
		else
			FUNC1(EX_NOUSER, "unknown group id: %s", gname);
	}
	return (gid);
}