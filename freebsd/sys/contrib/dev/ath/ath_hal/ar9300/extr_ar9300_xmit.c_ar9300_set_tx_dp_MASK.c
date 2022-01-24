#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
typedef  size_t u_int ;
struct ath_hal {int dummy; } ;
struct TYPE_8__ {TYPE_2__* ah_txq; } ;
struct TYPE_5__ {size_t halTotalQueues; } ;
struct TYPE_7__ {TYPE_1__ ah_caps; } ;
struct TYPE_6__ {scalar_t__ tqi_type; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct ath_hal*) ; 
 TYPE_3__* FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ HAL_TX_QUEUE_INACTIVE ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,scalar_t__) ; 

HAL_BOOL
FUNC5(struct ath_hal *ah, u_int q, u_int32_t txdp)
{
    FUNC3(q < FUNC1(ah)->ah_caps.halTotalQueues);
    FUNC3(FUNC0(ah)->ah_txq[q].tqi_type != HAL_TX_QUEUE_INACTIVE);
    FUNC3(txdp != 0);

    FUNC4(ah, FUNC2(q), txdp);

    return AH_TRUE;
}