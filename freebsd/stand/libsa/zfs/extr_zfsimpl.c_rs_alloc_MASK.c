#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdev_t ;
typedef  void* uint64_t ;
struct TYPE_4__ {void* rs_split_offset; void* rs_asize; void* rs_offset; int /*<<< orphan*/ * rs_vd; } ;
typedef  TYPE_1__ remap_segment_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 

__attribute__((used)) static remap_segment_t *
FUNC1(vdev_t *vd, uint64_t offset, uint64_t asize, uint64_t split_offset)
{
	remap_segment_t *rs = FUNC0(sizeof (remap_segment_t));

	if (rs != NULL) {
		rs->rs_vd = vd;
		rs->rs_offset = offset;
		rs->rs_asize = asize;
		rs->rs_split_offset = split_offset;
	}

	return (rs);
}