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
typedef  int u_int8_t ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int AH_FALSE ; 
 int AH_TRUE ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned long FUNC1 (struct ath_hal*,scalar_t__) ; 
 int FUNC2 (struct ath_hal*) ; 

__attribute__((used)) static u_int8_t FUNC3(struct ath_hal *ah, 
                                               int i, u_int8_t *pcdac)
{
    unsigned long tx_gain;
    u_int8_t tx_gain_table_max;
    tx_gain_table_max = FUNC2(ah);
    if (i <= 0 || i > tx_gain_table_max) {
        *pcdac = 0;
        return AH_FALSE;
    }

    tx_gain = FUNC1(ah, FUNC0(1) + i * 4);
    *pcdac = ((tx_gain >> 24) & 0xff);
    return AH_TRUE;
}