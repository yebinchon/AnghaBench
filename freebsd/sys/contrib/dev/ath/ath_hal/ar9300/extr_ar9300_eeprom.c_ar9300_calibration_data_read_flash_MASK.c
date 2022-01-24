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
typedef  int /*<<< orphan*/  u_int8_t ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 int AR9300_EEPROM_SIZE ; 

HAL_BOOL
FUNC0(struct ath_hal *ah, long address,
    u_int8_t *buffer, int many)
{

    if (((address) < 0) || ((address + many) > AR9300_EEPROM_SIZE - 1)) {
        return AH_FALSE;
    }
    return AH_FALSE;
}