#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ z_size; int /*<<< orphan*/  z_id; TYPE_1__* z_zfsvfs; } ;
typedef  TYPE_2__ znode_t ;
typedef  int /*<<< orphan*/  vnode_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ u_long ;
typedef  scalar_t__ offset_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  z_os; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  ENXIO ; 
 int ESRCH ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ _FIO_SEEK_HOLE ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int
FUNC4(vnode_t *vp, u_long cmd, offset_t *off)
{
	znode_t	*zp = FUNC2(vp);
	uint64_t noff = (uint64_t)*off; /* new offset */
	uint64_t file_sz;
	int error;
	boolean_t hole;

	file_sz = zp->z_size;
	if (noff >= file_sz)  {
		return (FUNC1(ENXIO));
	}

	if (cmd == _FIO_SEEK_HOLE)
		hole = B_TRUE;
	else
		hole = B_FALSE;

	error = FUNC3(zp->z_zfsvfs->z_os, zp->z_id, hole, &noff);

	if (error == ESRCH)
		return (FUNC1(ENXIO));

	/*
	 * We could find a hole that begins after the logical end-of-file,
	 * because dmu_offset_next() only works on whole blocks.  If the
	 * EOF falls mid-block, then indicate that the "virtual hole"
	 * at the end of the file begins at the logical EOF, rather than
	 * at the end of the last block.
	 */
	if (noff > file_sz) {
		FUNC0(hole);
		noff = file_sz;
	}

	if (noff < *off)
		return (error);
	*off = noff;
	return (error);
}