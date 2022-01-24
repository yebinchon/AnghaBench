#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t zc_nvlist_dst_size; int /*<<< orphan*/  zc_nvlist_dst_filled; int /*<<< orphan*/  zc_iflags; scalar_t__ zc_nvlist_dst; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  EFAULT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,void*,size_t,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(zfs_cmd_t *zc, nvlist_t *nvl)
{
	char *packed = NULL;
	int error = 0;
	size_t size;

	size = FUNC4(nvl);

	if (size > zc->zc_nvlist_dst_size) {
		/*
		 * Solaris returns ENOMEM here, because even if an error is
		 * returned from an ioctl(2), new zc_nvlist_dst_size will be
		 * passed to the userland. This is not the case for FreeBSD.
		 * We need to return 0, so the kernel will copy the
		 * zc_nvlist_dst_size back and the userland can discover that a
		 * bigger buffer is needed.
		 */
		error = 0;
	} else {
		packed = FUNC2(nvl, &size);
		if (FUNC1(packed, (void *)(uintptr_t)zc->zc_nvlist_dst,
		    size, zc->zc_iflags) != 0)
			error = FUNC0(EFAULT);
		FUNC3(packed, size);
	}

	zc->zc_nvlist_dst_size = size;
	zc->zc_nvlist_dst_filled = B_TRUE;
	return (error);
}