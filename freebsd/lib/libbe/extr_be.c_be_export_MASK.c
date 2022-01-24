#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct TYPE_8__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ sendflags_t ;
struct TYPE_9__ {int /*<<< orphan*/  lzh; } ;
typedef  TYPE_2__ libbe_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  BE_ERR_ZFSOPEN ; 
 int BE_MAXPATHLEN ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char*) ; 
 int FUNC1 (TYPE_2__*,char const*,int /*<<< orphan*/ *,int,char*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__) ; 

int
FUNC6(libbe_handle_t *lbh, const char *bootenv, int fd)
{
	char snap_name[BE_MAXPATHLEN];
	char buf[BE_MAXPATHLEN];
	zfs_handle_t *zfs;
	sendflags_t flags = { 0 };
	int err;

	if ((err = FUNC1(lbh, bootenv, NULL, true, snap_name)) != 0)
		/* Use the error set by be_snapshot */
		return (err);

	FUNC0(lbh, snap_name, buf);

	if ((zfs = FUNC4(lbh->lzh, buf, ZFS_TYPE_DATASET)) == NULL)
		return (FUNC2(lbh, BE_ERR_ZFSOPEN));

	err = FUNC5(zfs, NULL, fd, flags);
	FUNC3(zfs);

	return (err);
}