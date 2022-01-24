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
struct fs {char* fs_volname; int fs_flags; int fs_maxcontig; int fs_bsize; int fs_maxbsize; int fs_maxbpg; int fs_fsize; int fs_avgfilesize; int fs_avgfpdir; int fs_ipg; int fs_minfree; int fs_optim; int /*<<< orphan*/  fs_size; int /*<<< orphan*/  fs_metaspace; int /*<<< orphan*/  fs_fpg; } ;
typedef  int /*<<< orphan*/  intmax_t ;
struct TYPE_2__ {char* d_name; int d_ufs; struct fs d_fs; } ;

/* Variables and functions */
 int FS_DOSOFTDEP ; 
 int FS_GJOURNAL ; 
 int FS_MULTILABEL ; 
#define  FS_OPTSPACE 129 
#define  FS_OPTTIME 128 
 int FS_SUJ ; 
 int FS_TRIM ; 
 TYPE_1__ disk ; 
 int /*<<< orphan*/  FUNC0 (struct fs*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fs*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct fs*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int
FUNC5(const char *name)
{
	struct fs *fs;

	fs = &disk.d_fs;

	FUNC4("# newfs command for %s (%s)\n", name, disk.d_name);
	FUNC4("newfs ");
	if (fs->fs_volname[0] != '\0')
		FUNC4("-L %s ", fs->fs_volname);
	FUNC4("-O %d ", disk.d_ufs);
	if (fs->fs_flags & FS_DOSOFTDEP)
		FUNC4("-U ");
	FUNC4("-a %d ", fs->fs_maxcontig);
	FUNC4("-b %d ", fs->fs_bsize);
	/* -c is dumb */
	FUNC4("-d %d ", fs->fs_maxbsize);
	FUNC4("-e %d ", fs->fs_maxbpg);
	FUNC4("-f %d ", fs->fs_fsize);
	FUNC4("-g %d ", fs->fs_avgfilesize);
	FUNC4("-h %d ", fs->fs_avgfpdir);
	FUNC4("-i %jd ", FUNC0(fs, FUNC3(fs, FUNC1(fs,
	    fs->fs_fpg)) / fs->fs_ipg));
	if (fs->fs_flags & FS_SUJ)
		FUNC4("-j ");
	if (fs->fs_flags & FS_GJOURNAL)
		FUNC4("-J ");
	FUNC4("-k %jd ", fs->fs_metaspace);
	if (fs->fs_flags & FS_MULTILABEL)
		FUNC4("-l ");
	FUNC4("-m %d ", fs->fs_minfree);
	/* -n unimplemented */
	FUNC4("-o ");
	switch (fs->fs_optim) {
	case FS_OPTSPACE:
		FUNC4("space ");
		break;
	case FS_OPTTIME:
		FUNC4("time ");
		break;
	default:
		FUNC4("unknown ");
		break;
	}
	/* -p..r unimplemented */
	FUNC4("-s %jd ", (intmax_t)FUNC2(fs, fs->fs_size));
	if (fs->fs_flags & FS_TRIM)
		FUNC4("-t ");
	FUNC4("%s ", disk.d_name);
	FUNC4("\n");

	return 0;
}