#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct group {char const* gr_name; } ;
typedef  int gid_t ;
struct TYPE_3__ {scalar_t__ valid; int gid; char const* name; } ;
typedef  TYPE_1__ GIDC ;

/* Variables and functions */
 int GID_SZ ; 
 int /*<<< orphan*/  GNMLEN ; 
 scalar_t__ INVALID ; 
 scalar_t__ VALID ; 
 struct group* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__** gidtb ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  gropn ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct group* FUNC7 (int) ; 

const char *
FUNC8(gid_t gid, int noname)
{
	struct group *gr;
	GIDC *ptr, **pptr;

	if ((gidtb == NULL) && (FUNC2() < 0))
		return (NULL);

	/*
	 * see if we have this gid cached
	 */
	pptr = gidtb + (gid % GID_SZ);
	ptr = *pptr;

	if ((ptr != NULL) && (ptr->valid > 0) && (ptr->gid == gid)) {
		/*
		 * have an entry for this gid
		 */
		if (!noname || (ptr->valid == VALID))
			return (ptr->name);
		return (NULL);
	}

	/*
	 * No entry for this gid, we will add it
	 */
	if (!gropn) {
		if (&_pwcache_setgroupent != NULL)
			FUNC1)(1);
		++gropn;
	}

	if (ptr == NULL)
		*pptr = ptr = (GIDC *)FUNC3(sizeof(GIDC));

	if ((gr = FUNC0)(gid)) == NULL) {
		/*
		 * no match for this gid in the local group file, put in
		 * a string that is the gid in numberic format
		 */
		if (ptr == NULL)
			return (NULL);
		ptr->gid = gid;
		(void)FUNC4(ptr->name, GNMLEN, "%lu", (long) gid);
		ptr->valid = INVALID;
		if (noname)
			return (NULL);
	} else {
		/*
		 * there is an entry for this group in the group file
		 */
		if (ptr == NULL)
			return (gr->gr_name);
		ptr->gid = gid;
		(void)FUNC5(ptr->name, gr->gr_name, GNMLEN);
		ptr->valid = VALID;
	}
	return (ptr->name);
}