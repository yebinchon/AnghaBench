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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static int
FUNC2(uint64_t *buf, int size, uint64_t *wantedblk)
{
    int blk;
    for (blk = 0; blk < size; blk++) {
	if (buf[blk] == 0)
	    continue;
	if (FUNC0(wantedblk, buf[blk])) {
	    if (FUNC1(buf[blk]))
		return 1;
	}
    }
    return 0;
}