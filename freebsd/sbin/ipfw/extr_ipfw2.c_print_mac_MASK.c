#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct buf_pr {int dummy; } ;
struct TYPE_3__ {scalar_t__ mask; scalar_t__ addr; } ;
typedef  TYPE_1__ ipfw_insn_mac ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf_pr*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct buf_pr*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct buf_pr *bp, ipfw_insn_mac *mac)
{

	FUNC0(bp, " MAC");
	FUNC1(bp, mac->addr, mac->mask);
	FUNC1(bp, mac->addr + 6, mac->mask + 6);
}