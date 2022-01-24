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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  arc_buf_hdr_t ;
typedef  scalar_t__ arc_buf_contents_t ;
typedef  int /*<<< orphan*/  abd_t ;

/* Variables and functions */
 scalar_t__ ARC_BUFC_DATA ; 
 scalar_t__ ARC_BUFC_METADATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static abd_t *
FUNC4(arc_buf_hdr_t *hdr, uint64_t size, void *tag, boolean_t do_adapt)
{
	arc_buf_contents_t type = FUNC2(hdr);

	FUNC3(hdr, size, tag, do_adapt);
	if (type == ARC_BUFC_METADATA) {
		return (FUNC1(size, B_TRUE));
	} else {
		FUNC0(type == ARC_BUFC_DATA);
		return (FUNC1(size, B_FALSE));
	}
}