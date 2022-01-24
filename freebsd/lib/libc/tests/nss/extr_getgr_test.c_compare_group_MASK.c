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
struct group {char* gr_name; char* gr_passwd; scalar_t__ gr_gid; char** gr_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct group*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static  int
FUNC3(struct group *grp1, struct group *grp2, void *mdata)
{
	char **c1, **c2;

	if (grp1 == grp2)
		return (0);

	if (grp1 == NULL || grp2 == NULL)
		goto errfin;

	if (FUNC2(grp1->gr_name, grp2->gr_name) != 0 ||
	    FUNC2(grp1->gr_passwd, grp2->gr_passwd) != 0 ||
	    grp1->gr_gid != grp2->gr_gid)
			goto errfin;

	c1 = grp1->gr_mem;
	c2 = grp2->gr_mem;

	if (grp1->gr_mem == NULL || grp2->gr_mem == NULL)
		goto errfin;

	for (; *c1 && *c2; ++c1, ++c2)
		if (FUNC2(*c1, *c2) != 0)
			goto errfin;

	if (*c1 != NULL || *c2 != NULL)
		goto errfin;

	return 0;

errfin:
	if (mdata == NULL) {
		FUNC1("following structures are not equal:\n");
		FUNC0(grp1);
		FUNC0(grp2);
	}

	return (-1);
}