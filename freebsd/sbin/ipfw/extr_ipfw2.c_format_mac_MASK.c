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
typedef  int /*<<< orphan*/  uint8_t ;
struct buf_pr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf_pr*,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(struct buf_pr *bp, uint8_t *addr, uint8_t *mask)
{
	int l = FUNC1(mask, 48);

	if (l == 0)
		FUNC0(bp, " any");
	else {
		FUNC0(bp, " %02x:%02x:%02x:%02x:%02x:%02x",
		    addr[0], addr[1], addr[2], addr[3], addr[4], addr[5]);
		if (l == -1)
			FUNC0(bp, "&%02x:%02x:%02x:%02x:%02x:%02x",
			    mask[0], mask[1], mask[2],
			    mask[3], mask[4], mask[5]);
		else if (l < 48)
			FUNC0(bp, "/%d", l);
	}
}