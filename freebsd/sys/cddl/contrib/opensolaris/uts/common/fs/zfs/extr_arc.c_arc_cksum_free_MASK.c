#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_cksum_t ;
struct TYPE_5__ {int /*<<< orphan*/  b_freeze_lock; int /*<<< orphan*/ * b_freeze_cksum; } ;
struct TYPE_6__ {TYPE_1__ b_l1hdr; } ;
typedef  TYPE_2__ arc_buf_hdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC5(arc_buf_hdr_t *hdr)
{
	FUNC0(FUNC1(hdr));
	FUNC3(&hdr->b_l1hdr.b_freeze_lock);
	if (hdr->b_l1hdr.b_freeze_cksum != NULL) {
		FUNC2(hdr->b_l1hdr.b_freeze_cksum, sizeof (zio_cksum_t));
		hdr->b_l1hdr.b_freeze_cksum = NULL;
	}
	FUNC4(&hdr->b_l1hdr.b_freeze_lock);
}