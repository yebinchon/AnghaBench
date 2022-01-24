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
typedef  scalar_t__ uint64_t ;
struct zfs_probe_args {int fd; scalar_t__ secsz; char const* devname; scalar_t__* pool_guid; } ;
struct ptable {int dummy; } ;
struct disk_devdesc {int d_partition; int d_slice; } ;
struct TYPE_2__ {scalar_t__ (* arch_getdev ) (void**,char const*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGMEDIASIZE ; 
 int /*<<< orphan*/  DIOCGSECTORSIZE ; 
 int D_PARTNONE ; 
 int D_SLICENONE ; 
 int ENXIO ; 
 int /*<<< orphan*/  O_RDONLY ; 
 TYPE_1__ archsw ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct disk_devdesc*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ptable*) ; 
 int /*<<< orphan*/  FUNC5 (struct ptable*,struct zfs_probe_args*,int /*<<< orphan*/ ) ; 
 struct ptable* FUNC6 (struct zfs_probe_args*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (void**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfs_diskread ; 
 int FUNC8 (int,scalar_t__*) ; 
 int /*<<< orphan*/  zfs_probe_partition ; 

int
FUNC9(const char *devname, uint64_t *pool_guid)
{
	struct disk_devdesc *dev;
	struct ptable *table;
	struct zfs_probe_args pa;
	uint64_t mediasz;
	int ret;

	if (pool_guid)
		*pool_guid = 0;
	pa.fd = FUNC3(devname, O_RDONLY);
	if (pa.fd == -1)
		return (ENXIO);
	/*
	 * We will not probe the whole disk, we can not boot from such
	 * disks and some systems will misreport the disk sizes and will
	 * hang while accessing the disk.
	 */
	if (archsw.arch_getdev((void **)&dev, devname, NULL) == 0) {
		int partition = dev->d_partition;
		int slice = dev->d_slice;

		FUNC1(dev);
		if (partition != D_PARTNONE && slice != D_SLICENONE) {
			ret = FUNC8(pa.fd, pool_guid);
			if (ret == 0)
				return (0);
		}
	}

	/* Probe each partition */
	ret = FUNC2(pa.fd, DIOCGMEDIASIZE, &mediasz);
	if (ret == 0)
		ret = FUNC2(pa.fd, DIOCGSECTORSIZE, &pa.secsz);
	if (ret == 0) {
		pa.devname = devname;
		pa.pool_guid = pool_guid;
		table = FUNC6(&pa, mediasz / pa.secsz, pa.secsz,
		    zfs_diskread);
		if (table != NULL) {
			FUNC5(table, &pa, zfs_probe_partition);
			FUNC4(table);
		}
	}
	FUNC0(pa.fd);
	if (pool_guid && *pool_guid == 0)
		ret = ENXIO;
	return (ret);
}