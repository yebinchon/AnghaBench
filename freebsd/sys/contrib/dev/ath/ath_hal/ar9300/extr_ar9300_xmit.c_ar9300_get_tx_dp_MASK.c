#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  scalar_t__ u_int ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {scalar_t__ halTotalQueues; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ) ; 

u_int32_t
FUNC4(struct ath_hal *ah, u_int q)
{
    FUNC2(q < FUNC0(ah)->ah_caps.halTotalQueues);
    return FUNC3(ah, FUNC1(q));
}