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
typedef  int u_long ;
struct fileusage {int fu_id; int /*<<< orphan*/  fu_name; struct fileusage* fu_next; } ;

/* Variables and functions */
 int FUHASH ; 
 int USRQUOTA ; 
 scalar_t__ aflag ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 struct fileusage* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 struct fileusage*** fuhead ; 
 struct fileusage* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (char*) ; 
 scalar_t__ vflag ; 

struct fileusage *
FUNC7(u_long id, int type, char *name, const char *fsname)
{
	struct fileusage *fup, **fhp;
	int len;

	if ((fup = FUNC3(id, type)) != NULL)
		return (fup);
	if (name)
		len = FUNC6(name);
	else
		len = 0;
	if ((fup = FUNC1(1, sizeof(*fup) + len)) == NULL)
		FUNC2(1, "calloc failed");
	fhp = &fuhead[type][id & (FUHASH - 1)];
	fup->fu_next = *fhp;
	*fhp = fup;
	fup->fu_id = id;
	if (name)
		FUNC0(name, fup->fu_name, len + 1);
	else {
		(void)FUNC5(fup->fu_name, "%lu", id);
		if (vflag) {
			if (aflag && fsname != NULL)
				(void)FUNC4("%s: ", fsname);
			FUNC4("unknown %cid: %lu\n",
			    type == USRQUOTA ? 'u' : 'g', id);
		}
	}
	return (fup);
}