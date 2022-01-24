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
struct ath_hal {int dummy; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hal*) ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ base_address ; 
 scalar_t__ base_address_512 ; 

int32_t 
FUNC2(struct ath_hal *ah)
{
    if (FUNC1(ah) || FUNC0(ah)) {
        return base_address_512+1;
    } else {
        return base_address+1;
    }
}