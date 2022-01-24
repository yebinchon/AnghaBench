#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int fs_flags; char* fs_maxbpg; char* fs_avgfilesize; char* fs_avgfpdir; char* fs_minfree; char* fs_metaspace; scalar_t__ fs_optim; char* fs_volname; } ;

/* Variables and functions */
 int FS_ACLS ; 
 int FS_DOSOFTDEP ; 
 int FS_GJOURNAL ; 
 int FS_MULTILABEL ; 
 int FS_NFS4ACLS ; 
 scalar_t__ FS_OPTSPACE ; 
 scalar_t__ FS_OPTTIME ; 
 int FS_SUJ ; 
 int FS_TRIM ; 
 char* MINFREE ; 
 int /*<<< orphan*/  OPTWARN ; 
 TYPE_1__ sblock ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 

__attribute__((used)) static void
FUNC1(void)
{
	FUNC0("POSIX.1e ACLs: (-a)                                %s",
		(sblock.fs_flags & FS_ACLS)? "enabled" : "disabled");
	FUNC0("NFSv4 ACLs: (-N)                                   %s",
		(sblock.fs_flags & FS_NFS4ACLS)? "enabled" : "disabled");
	FUNC0("MAC multilabel: (-l)                               %s",
		(sblock.fs_flags & FS_MULTILABEL)? "enabled" : "disabled");
	FUNC0("soft updates: (-n)                                 %s", 
		(sblock.fs_flags & FS_DOSOFTDEP)? "enabled" : "disabled");
	FUNC0("soft update journaling: (-j)                       %s", 
		(sblock.fs_flags & FS_SUJ)? "enabled" : "disabled");
	FUNC0("gjournal: (-J)                                     %s",
		(sblock.fs_flags & FS_GJOURNAL)? "enabled" : "disabled");
	FUNC0("trim: (-t)                                         %s", 
		(sblock.fs_flags & FS_TRIM)? "enabled" : "disabled");
	FUNC0("maximum blocks per file in a cylinder group: (-e)  %d",
	      sblock.fs_maxbpg);
	FUNC0("average file size: (-f)                            %d",
	      sblock.fs_avgfilesize);
	FUNC0("average number of files in a directory: (-s)       %d",
	      sblock.fs_avgfpdir);
	FUNC0("minimum percentage of free space: (-m)             %d%%",
	      sblock.fs_minfree);
	FUNC0("space to hold for metadata blocks: (-k)            %jd",
	      sblock.fs_metaspace);
	FUNC0("optimization preference: (-o)                      %s",
	      sblock.fs_optim == FS_OPTSPACE ? "space" : "time");
	if (sblock.fs_minfree >= MINFREE &&
	    sblock.fs_optim == FS_OPTSPACE)
		FUNC0(OPTWARN, "time", ">=", MINFREE);
	if (sblock.fs_minfree < MINFREE &&
	    sblock.fs_optim == FS_OPTTIME)
		FUNC0(OPTWARN, "space", "<", MINFREE);
	FUNC0("volume label: (-L)                                 %s",
		sblock.fs_volname);
}