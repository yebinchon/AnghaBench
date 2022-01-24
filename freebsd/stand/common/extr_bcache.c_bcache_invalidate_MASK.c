#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct bcache {TYPE_1__* bcache_ctl; } ;
typedef  int daddr_t ;
struct TYPE_2__ {int bc_blkno; int bc_count; } ;

/* Variables and functions */
 size_t FUNC0 (struct bcache*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void
FUNC2(struct bcache *bc, daddr_t blkno)
{
    u_int	i;
    
    i = FUNC0(bc, blkno);
    if (bc->bcache_ctl[i].bc_blkno == blkno) {
	bc->bcache_ctl[i].bc_count = -1;
	bc->bcache_ctl[i].bc_blkno = -1;
	FUNC1("invalidate blk %llu", blkno);
    }
}