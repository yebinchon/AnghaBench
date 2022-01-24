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
typedef  int u_int32_t ;
typedef  scalar_t__ u_char ;
struct fatEntry {int length; size_t next; } ;
struct dosDirEntry {size_t head; int size; } ;
struct bootblock {size_t NumClusters; int ClusterSize; } ;
typedef  size_t cl_t ;

/* Variables and functions */
 size_t CLUST_EOF ; 
 size_t CLUST_FIRST ; 
 size_t CLUST_FREE ; 
 int FSDIRMOD ; 
 int FSERROR ; 
 int FSFATMOD ; 
 int FSOK ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bootblock*,struct fatEntry*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct dosDirEntry*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC4(struct bootblock *boot, struct fatEntry *fat, u_char *p,
    struct dosDirEntry *dir)
{
	/*
	 * Check size on ordinary files
	 */
	u_int32_t physicalSize;

	if (dir->head == CLUST_FREE)
		physicalSize = 0;
	else {
		if (dir->head < CLUST_FIRST || dir->head >= boot->NumClusters)
			return FSERROR;
		physicalSize = fat[dir->head].length * boot->ClusterSize;
	}
	if (physicalSize < dir->size) {
		FUNC3("size of %s is %u, should at most be %u\n",
		      FUNC2(dir), dir->size, physicalSize);
		if (FUNC0(1, "Truncate")) {
			dir->size = physicalSize;
			p[28] = (u_char)physicalSize;
			p[29] = (u_char)(physicalSize >> 8);
			p[30] = (u_char)(physicalSize >> 16);
			p[31] = (u_char)(physicalSize >> 24);
			return FSDIRMOD;
		} else
			return FSERROR;
	} else if (physicalSize - dir->size >= boot->ClusterSize) {
		FUNC3("%s has too many clusters allocated\n",
		      FUNC2(dir));
		if (FUNC0(1, "Drop superfluous clusters")) {
			cl_t cl;
			u_int32_t sz, len;

			for (cl = dir->head, len = sz = 0;
			    (sz += boot->ClusterSize) < dir->size; len++)
				cl = fat[cl].next;
			FUNC1(boot, fat, fat[cl].next);
			fat[cl].next = CLUST_EOF;
			fat[dir->head].length = len;
			return FSFATMOD;
		} else
			return FSERROR;
	}
	return FSOK;
}