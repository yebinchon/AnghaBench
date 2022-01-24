#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kmutex_t ;
struct TYPE_11__ {TYPE_3__* b_hdr; } ;
typedef  TYPE_2__ arc_buf_t ;
struct TYPE_10__ {scalar_t__ b_state; int /*<<< orphan*/ * b_freeze_cksum; } ;
struct TYPE_12__ {TYPE_1__ b_l1hdr; } ;
typedef  TYPE_3__ arc_buf_hdr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*) ; 
 int ZFS_DEBUG_MODIFY ; 
 scalar_t__ arc_anon ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int zfs_flags ; 

void
FUNC8(arc_buf_t *buf)
{
	arc_buf_hdr_t *hdr = buf->b_hdr;
	kmutex_t *hash_lock;

	if (!(zfs_flags & ZFS_DEBUG_MODIFY))
		return;

	if (FUNC0(buf)) {
		FUNC1(hdr->b_l1hdr.b_freeze_cksum == NULL ||
		    FUNC5(hdr));
		return;
	}

	hash_lock = FUNC3(hdr);
	FUNC6(hash_lock);

	FUNC1(FUNC2(hdr));
	FUNC1(hdr->b_l1hdr.b_freeze_cksum != NULL ||
	    hdr->b_l1hdr.b_state == arc_anon);
	FUNC4(buf);
	FUNC7(hash_lock);
}