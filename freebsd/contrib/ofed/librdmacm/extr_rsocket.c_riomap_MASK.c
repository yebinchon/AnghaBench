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
struct rsocket {int iomap_pending; int /*<<< orphan*/  map_lock; int /*<<< orphan*/  iomap_list; int /*<<< orphan*/  iomap_queue; TYPE_1__* cm_id; } ;
struct rs_iomap_mr {int index; int offset; int /*<<< orphan*/  entry; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  mr; } ;
typedef  int off_t ;
struct TYPE_2__ {int /*<<< orphan*/  pd; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int IBV_ACCESS_LOCAL_WRITE ; 
 int IBV_ACCESS_REMOTE_WRITE ; 
 int PROT_NONE ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct rs_iomap_mr* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rs_iomap_mr*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,size_t,int) ; 
 int /*<<< orphan*/  idm ; 
 struct rsocket* FUNC8 (int /*<<< orphan*/ *,int) ; 
 struct rs_iomap_mr* FUNC9 (struct rsocket*) ; 

off_t FUNC10(int socket, void *buf, size_t len, int prot, int flags, off_t offset)
{
	struct rsocket *rs;
	struct rs_iomap_mr *iomr;
	int access = IBV_ACCESS_LOCAL_WRITE;

	rs = FUNC8(&idm, socket);
	if (!rs->cm_id->pd || (prot & ~(PROT_WRITE | PROT_NONE)))
		return FUNC0(EINVAL);

	FUNC4(&rs->map_lock);
	if (prot & PROT_WRITE) {
		iomr = FUNC9(rs);
		access |= IBV_ACCESS_REMOTE_WRITE;
	} else {
		iomr = FUNC2(1, sizeof(*iomr));
		iomr->index = -1;
	}
	if (!iomr) {
		offset = FUNC0(ENOMEM);
		goto out;
	}

	iomr->mr = FUNC7(rs->cm_id->pd, buf, len, access);
	if (!iomr->mr) {
		if (iomr->index < 0)
			FUNC6(iomr);
		offset = -1;
		goto out;
	}

	if (offset == -1)
		offset = (uintptr_t) buf;
	iomr->offset = offset;
	FUNC1(&iomr->refcnt, 1);

	if (iomr->index >= 0) {
		FUNC3(&iomr->entry, &rs->iomap_queue);
		rs->iomap_pending = 1;
	} else {
		FUNC3(&iomr->entry, &rs->iomap_list);
	}
out:
	FUNC5(&rs->map_lock);
	return offset;
}