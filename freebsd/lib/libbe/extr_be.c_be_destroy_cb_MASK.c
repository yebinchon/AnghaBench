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
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct be_destroy_data {char* snapname; TYPE_1__* lbh; } ;
typedef  int /*<<< orphan*/  path ;
struct TYPE_2__ {int /*<<< orphan*/  lzh; } ;

/* Variables and functions */
 int BE_MAXPATHLEN ; 
 int /*<<< orphan*/  ZFS_TYPE_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,void*),void*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,void*),void*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(zfs_handle_t *zfs_hdl, void *data)
{
	char path[BE_MAXPATHLEN];
	struct be_destroy_data *bdd;
	zfs_handle_t *snap;
	int err;

	bdd = (struct be_destroy_data *)data;
	if (bdd->snapname == NULL) {
		err = FUNC4(zfs_hdl, be_destroy_cb, data);
		if (err != 0)
			return (err);
		return (FUNC2(zfs_hdl, false));
	}
	/* If we're dealing with snapshots instead, delete that one alone */
	err = FUNC5(zfs_hdl, be_destroy_cb, data);
	if (err != 0)
		return (err);
	/*
	 * This part is intentionally glossing over any potential errors,
	 * because there's a lot less potential for errors when we're cleaning
	 * up snapshots rather than a full deep BE.  The primary error case
	 * here being if the snapshot doesn't exist in the first place, which
	 * the caller will likely deem insignificant as long as it doesn't
	 * exist after the call.  Thus, such a missing snapshot shouldn't jam
	 * up the destruction.
	 */
	FUNC0(path, sizeof(path), "%s@%s", FUNC3(zfs_hdl),
	    bdd->snapname);
	if (!FUNC1(bdd->lbh->lzh, path, ZFS_TYPE_SNAPSHOT))
		return (0);
	snap = FUNC6(bdd->lbh->lzh, path, ZFS_TYPE_SNAPSHOT);
	if (snap != NULL)
		FUNC2(snap, false);
	return (0);
}