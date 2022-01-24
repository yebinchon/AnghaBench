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
typedef  int /*<<< orphan*/  u_int ;
typedef  scalar_t__ cl_t ;

/* Variables and functions */
 scalar_t__ CLUST_BAD ; 
 scalar_t__ CLUST_FREE ; 
 scalar_t__ CLUST_RSRVD ; 
 int FSERROR ; 
 int FSFATAL ; 
 int FSFATMOD ; 
 scalar_t__ FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__,...) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static int
FUNC3(cl_t cl, cl_t *cp1, cl_t *cp2, u_int fatnum)
{
	if (*cp1 == CLUST_FREE || *cp1 >= CLUST_RSRVD) {
		if (*cp2 == CLUST_FREE || *cp2 >= CLUST_RSRVD) {
			if ((*cp1 != CLUST_FREE && *cp1 < CLUST_BAD
			     && *cp2 != CLUST_FREE && *cp2 < CLUST_BAD)
			    || (*cp1 > CLUST_BAD && *cp2 > CLUST_BAD)) {
				FUNC1("Cluster %u is marked %s with different indicators\n",
				      cl, FUNC2(*cp1));
				if (FUNC0(1, "Fix")) {
					*cp2 = *cp1;
					return FSFATMOD;
				}
				return FSFATAL;
			}
			FUNC1("Cluster %u is marked %s in FAT 0, %s in FAT %u\n",
			      cl, FUNC2(*cp1), FUNC2(*cp2), fatnum);
			if (FUNC0(0, "Use FAT 0's entry")) {
				*cp2 = *cp1;
				return FSFATMOD;
			}
			if (FUNC0(0, "Use FAT %u's entry", fatnum)) {
				*cp1 = *cp2;
				return FSFATMOD;
			}
			return FSFATAL;
		}
		FUNC1("Cluster %u is marked %s in FAT 0, but continues with cluster %u in FAT %d\n",
		      cl, FUNC2(*cp1), *cp2, fatnum);
		if (FUNC0(0, "Use continuation from FAT %u", fatnum)) {
			*cp1 = *cp2;
			return FSFATMOD;
		}
		if (FUNC0(0, "Use mark from FAT 0")) {
			*cp2 = *cp1;
			return FSFATMOD;
		}
		return FSFATAL;
	}
	if (*cp2 == CLUST_FREE || *cp2 >= CLUST_RSRVD) {
		FUNC1("Cluster %u continues with cluster %u in FAT 0, but is marked %s in FAT %u\n",
		      cl, *cp1, FUNC2(*cp2), fatnum);
		if (FUNC0(0, "Use continuation from FAT 0")) {
			*cp2 = *cp1;
			return FSFATMOD;
		}
		if (FUNC0(0, "Use mark from FAT %d", fatnum)) {
			*cp1 = *cp2;
			return FSFATMOD;
		}
		return FSERROR;
	}
	FUNC1("Cluster %u continues with cluster %u in FAT 0, but with cluster %u in FAT %u\n",
	      cl, *cp1, *cp2, fatnum);
	if (FUNC0(0, "Use continuation from FAT 0")) {
		*cp2 = *cp1;
		return FSFATMOD;
	}
	if (FUNC0(0, "Use continuation from FAT %u", fatnum)) {
		*cp1 = *cp2;
		return FSFATMOD;
	}
	return FSERROR;
}