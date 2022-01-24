#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct TYPE_7__ {int nomount; } ;
typedef  TYPE_1__ recvflags_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_8__ {int /*<<< orphan*/  lzh; } ;
typedef  TYPE_2__ libbe_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  BE_ERR_IO ; 
 int /*<<< orphan*/  BE_ERR_NOENT ; 
 int /*<<< orphan*/  BE_ERR_NOORIGIN ; 
 int /*<<< orphan*/  BE_ERR_UNKNOWN ; 
 int /*<<< orphan*/  BE_ERR_ZFSOPEN ; 
 int BE_MAXPATHLEN ; 
#define  EINVAL 130 
#define  EIO 129 
#define  ENOENT 128 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 

int
FUNC9(libbe_handle_t *lbh, const char *bootenv, int fd)
{
	char buf[BE_MAXPATHLEN];
	nvlist_t *props;
	zfs_handle_t *zfs;
	recvflags_t flags = { .nomount = 1 };
	int err;

	FUNC0(lbh, bootenv, buf);

	if ((err = FUNC8(lbh->lzh, buf, NULL, &flags, fd, NULL)) != 0) {
		switch (err) {
		case EINVAL:
			return (FUNC4(lbh, BE_ERR_NOORIGIN));
		case ENOENT:
			return (FUNC4(lbh, BE_ERR_NOENT));
		case EIO:
			return (FUNC4(lbh, BE_ERR_IO));
		default:
			return (FUNC4(lbh, BE_ERR_UNKNOWN));
		}
	}

	if ((zfs = FUNC6(lbh->lzh, buf, ZFS_TYPE_FILESYSTEM)) == NULL)
		return (FUNC4(lbh, BE_ERR_ZFSOPEN));

	FUNC2(&props, NV_UNIQUE_NAME, KM_SLEEP);
	FUNC1(props, "canmount", "noauto");
	FUNC1(props, "mountpoint", "none");

	err = FUNC7(zfs, props);
	FUNC3(props);

	FUNC5(zfs);

	if (err != 0)
		return (FUNC4(lbh, BE_ERR_UNKNOWN));

	return (0);
}