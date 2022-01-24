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
struct TYPE_3__ {int /*<<< orphan*/  txh_space_towrite; } ;
typedef  TYPE_1__ dmu_tx_hold_t ;

/* Variables and functions */
 int /*<<< orphan*/  DNODE_MIN_SIZE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(dmu_tx_hold_t *txh)
{
	(void) FUNC0(&txh->txh_space_towrite, DNODE_MIN_SIZE,
	    FTAG);
}