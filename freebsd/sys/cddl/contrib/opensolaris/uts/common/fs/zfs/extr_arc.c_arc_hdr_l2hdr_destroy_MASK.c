#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_11__ {int /*<<< orphan*/  l2ad_alloc; int /*<<< orphan*/  l2ad_vdev; int /*<<< orphan*/  l2ad_buflist; int /*<<< orphan*/  l2ad_mtx; } ;
typedef  TYPE_1__ l2arc_dev_t ;
struct TYPE_12__ {TYPE_1__* b_dev; } ;
typedef  TYPE_2__ l2arc_buf_hdr_t ;
struct TYPE_13__ {TYPE_2__ b_l2hdr; } ;
typedef  TYPE_3__ arc_buf_hdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ARC_FLAG_HAS_L2HDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  arcstat_l2_lsize ; 
 int /*<<< orphan*/  arcstat_l2_psize ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC10(arc_buf_hdr_t *hdr)
{
	l2arc_buf_hdr_t *l2hdr = &hdr->b_l2hdr;
	l2arc_dev_t *dev = l2hdr->b_dev;
	uint64_t psize = FUNC6(hdr);

	FUNC1(FUNC4(&dev->l2ad_mtx));
	FUNC1(FUNC3(hdr));

	FUNC7(&dev->l2ad_buflist, hdr);

	FUNC0(arcstat_l2_psize, -psize);
	FUNC0(arcstat_l2_lsize, -FUNC2(hdr));

	FUNC8(dev->l2ad_vdev, -psize, 0, 0);

	(void) FUNC9(&dev->l2ad_alloc, psize, hdr);
	FUNC5(hdr, ARC_FLAG_HAS_L2HDR);
}