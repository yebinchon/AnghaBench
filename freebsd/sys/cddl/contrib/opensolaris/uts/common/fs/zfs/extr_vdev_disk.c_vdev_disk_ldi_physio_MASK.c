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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/ * ldi_handle_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_7__ {void* b_addr; } ;
struct TYPE_8__ {int b_flags; size_t b_bcount; size_t b_bufsize; scalar_t__ b_resid; int /*<<< orphan*/  b_lblkno; TYPE_1__ b_un; } ;
typedef  TYPE_2__ buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int B_BUSY ; 
 int B_FAILFAST ; 
 int B_NOCACHE ; 
 int B_READ ; 
 int B_WRITE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 

int
FUNC7(ldi_handle_t vd_lh, caddr_t data,
    size_t size, uint64_t offset, int flags)
{
	buf_t *bp;
	int error = 0;

	if (vd_lh == NULL)
		return (FUNC1(EINVAL));

	FUNC0(flags & B_READ || flags & B_WRITE);

	bp = FUNC4(KM_SLEEP);
	bp->b_flags = flags | B_BUSY | B_NOCACHE | B_FAILFAST;
	bp->b_bcount = size;
	bp->b_un.b_addr = (void *)data;
	bp->b_lblkno = FUNC5(offset);
	bp->b_bufsize = size;

	error = FUNC6(vd_lh, bp);
	FUNC0(error == 0);
	if ((error = FUNC2(bp)) == 0 && bp->b_resid != 0)
		error = FUNC1(EIO);
	FUNC3(bp);

	return (error);
}