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
typedef  int /*<<< orphan*/  u_char ;
struct fatEntry {int dummy; } ;
struct bootblock {int dummy; } ;
typedef  scalar_t__ cl_t ;

/* Variables and functions */
 scalar_t__ CLUST_FIRST ; 
 int FSDIRMOD ; 
 int FSERROR ; 
 scalar_t__ FSFATAL ; 
 int /*<<< orphan*/  SLOT_DELETED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * buffer ; 
 scalar_t__ FUNC1 (int,struct bootblock*,struct fatEntry*,scalar_t__,int,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int
FUNC3(int f, struct bootblock *boot, struct fatEntry *fat, u_char *start,
    u_char *end, cl_t startcl, cl_t endcl, cl_t curcl, char *path, int type)
{
	switch (type) {
	case 0:
		FUNC2("Invalid long filename entry for %s\n", path);
		break;
	case 1:
		FUNC2("Invalid long filename entry at end of directory %s\n",
		    path);
		break;
	case 2:
		FUNC2("Invalid long filename entry for volume label\n");
		break;
	}
	if (FUNC0(0, "Remove")) {
		if (startcl != curcl) {
			if (FUNC1(f, boot, fat,
				   startcl, start - buffer,
				   endcl, end - buffer,
				   endcl == curcl) == FSFATAL)
				return FSFATAL;
			start = buffer;
		}
		/* startcl is < CLUST_FIRST for !fat32 root */
		if ((endcl == curcl) || (startcl < CLUST_FIRST))
			for (; start < end; start += 32)
				*start = SLOT_DELETED;
		return FSDIRMOD;
	}
	return FSERROR;
}