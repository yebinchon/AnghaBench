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
typedef  int /*<<< orphan*/  pgno_t ;
typedef  int /*<<< orphan*/  MPOOL ;

/* Variables and functions */
 int /*<<< orphan*/  MPOOL_PAGE_NEXT ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void *
FUNC1(MPOOL *mp, pgno_t *pgnoaddr)
{

	return (FUNC0(mp, pgnoaddr, MPOOL_PAGE_NEXT));
}