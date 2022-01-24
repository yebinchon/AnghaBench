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
struct TYPE_7__ {int /*<<< orphan*/  zc_cookie; int /*<<< orphan*/  zc_value; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  scalar_t__ offset_t ;
struct TYPE_8__ {scalar_t__ f_offset; struct TYPE_8__* f_vnode; } ;
typedef  TYPE_2__ file_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 scalar_t__ MAXOFFSET_T ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cap_write_rights ; 
 int /*<<< orphan*/  curthread ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__**) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(zfs_cmd_t *zc)
{
	file_t *fp;
	offset_t off;
	int error;

#ifdef illumos
	fp = getf(zc->zc_cookie);
#else
	FUNC2(curthread, zc->zc_cookie, &cap_write_rights, &fp);
#endif
	if (fp == NULL)
		return (FUNC0(EBADF));

	off = fp->f_offset;

#ifdef illumos
	error = dmu_diff(zc->zc_name, zc->zc_value, fp->f_vnode, &off);
#else
	error = FUNC1(zc->zc_name, zc->zc_value, fp, &off);
#endif

	if (off >= 0 && off <= MAXOFFSET_T)
		fp->f_offset = off;
	FUNC4(zc->zc_cookie);

	return (error);
}