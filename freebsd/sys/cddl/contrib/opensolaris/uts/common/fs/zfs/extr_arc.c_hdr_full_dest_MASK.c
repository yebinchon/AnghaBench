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
struct TYPE_4__ {int /*<<< orphan*/  b_arc_node; int /*<<< orphan*/  b_freeze_lock; int /*<<< orphan*/  b_refcnt; int /*<<< orphan*/  b_cv; } ;
struct TYPE_5__ {TYPE_1__ b_l1hdr; } ;
typedef  TYPE_2__ arc_buf_hdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_SPACE_HDRS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  HDR_FULL_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(void *vbuf, void *unused)
{
	arc_buf_hdr_t *hdr = vbuf;

	FUNC0(FUNC1(hdr));
	FUNC3(&hdr->b_l1hdr.b_cv);
	FUNC6(&hdr->b_l1hdr.b_refcnt);
	FUNC5(&hdr->b_l1hdr.b_freeze_lock);
	FUNC0(!FUNC4(&hdr->b_l1hdr.b_arc_node));
	FUNC2(HDR_FULL_SIZE, ARC_SPACE_HDRS);
}