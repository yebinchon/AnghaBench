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
struct TYPE_4__ {scalar_t__ tx_sync_thread; } ;
struct TYPE_5__ {int /*<<< orphan*/  dp_sync_taskq; int /*<<< orphan*/  dp_spa; TYPE_1__ dp_tx; } ;
typedef  TYPE_2__ dsl_pool_t ;

/* Variables and functions */
 scalar_t__ curthread ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC2(dsl_pool_t *dp)
{
	return (curthread == dp->dp_tx.tx_sync_thread ||
	    FUNC0(dp->dp_spa) ||
	    FUNC1(dp->dp_sync_taskq, curthread));
}