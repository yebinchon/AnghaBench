#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct libbe_deep_clone {char const* bename; char* snapname; int depth_limit; scalar_t__ depth; TYPE_1__* lbh; } ;
struct TYPE_7__ {int /*<<< orphan*/  lzh; } ;
typedef  TYPE_1__ libbe_handle_t ;

/* Variables and functions */
 int BE_ERR_UNKNOWN ; 
 int BE_MAXPATHLEN ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 int FUNC0 (int /*<<< orphan*/ *,struct libbe_deep_clone*) ; 
 int FUNC1 (TYPE_1__*,char const*,char*) ; 
 int FUNC2 (TYPE_1__*,char const*) ; 
 int FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 char* FUNC6 (char*,char) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(libbe_handle_t *lbh, const char *bename, const char *snapshot, int depth)
{
	int err;
	char snap_path[BE_MAXPATHLEN];
	char *parentname, *snapname;
	zfs_handle_t *parent_hdl;
	struct libbe_deep_clone ldc;

        /* ensure the boot environment name is valid */
	if ((err = FUNC2(lbh, bename)) != 0)
		return (FUNC5(lbh, err));

	/*
	 * prepend the boot environment root path if we're
	 * given a partial snapshot name.
	 */
	if ((err = FUNC1(lbh, snapshot, snap_path)) != 0)
		return (FUNC5(lbh, err));

	/* ensure the snapshot exists */
	if ((err = FUNC3(lbh, snap_path)) != 0)
		return (FUNC5(lbh, err));

        /* get a copy of the snapshot path so we can disect it */
	if ((parentname = FUNC7(snap_path)) == NULL)
		return (FUNC5(lbh, BE_ERR_UNKNOWN));

        /* split dataset name from snapshot name */
	snapname = FUNC6(parentname, '@');
	if (snapname == NULL) {
		FUNC4(parentname);
		return (FUNC5(lbh, BE_ERR_UNKNOWN));
	}
	*snapname = '\0';
	snapname++;

        /* set-up the boot environment */
        ldc.lbh = lbh;
        ldc.bename = bename;
        ldc.snapname = snapname;
	ldc.depth = 0;
	ldc.depth_limit = depth;

        /* the boot environment will be cloned from this dataset */
	parent_hdl = FUNC8(lbh->lzh, parentname, ZFS_TYPE_DATASET);

        /* create the boot environment */
	err = FUNC0(parent_hdl, &ldc);

	FUNC4(parentname);
	return (FUNC5(lbh, err));
}