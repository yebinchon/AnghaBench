#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  arc_buf_hdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_SPACE_L2HDRS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HDR_L2ONLY_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *vbuf, void *unused)
{
	arc_buf_hdr_t *hdr = vbuf;

	FUNC0(FUNC1(hdr));
	FUNC2(HDR_L2ONLY_SIZE, ARC_SPACE_L2HDRS);
}