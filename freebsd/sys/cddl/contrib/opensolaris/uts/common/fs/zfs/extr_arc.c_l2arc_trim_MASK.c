#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  l2ad_vdev; int /*<<< orphan*/  l2ad_mtx; } ;
typedef  TYPE_2__ l2arc_dev_t ;
struct TYPE_7__ {int /*<<< orphan*/  b_daddr; TYPE_2__* b_dev; } ;
struct TYPE_9__ {TYPE_1__ b_l2hdr; } ;
typedef  TYPE_3__ arc_buf_hdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(const arc_buf_hdr_t *hdr)
{
	l2arc_dev_t *dev = hdr->b_l2hdr.b_dev;

	FUNC0(FUNC2(hdr));
	FUNC0(FUNC3(&dev->l2ad_mtx));

	if (FUNC1(hdr) != 0) {
		FUNC4(dev->l2ad_vdev, hdr->b_l2hdr.b_daddr,
		    FUNC1(hdr), 0);
	}
}