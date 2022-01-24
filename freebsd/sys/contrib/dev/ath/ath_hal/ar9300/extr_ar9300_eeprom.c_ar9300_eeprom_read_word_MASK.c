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
typedef  scalar_t__ u_int16_t ;
typedef  int u_int ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 int /*<<< orphan*/  AH_TRUE ; 
 scalar_t__ AR9300_EEPROM_OFFSET ; 
 int AR9300_EEPROM_S ; 
 int /*<<< orphan*/  AR_EEPROM_STATUS_DATA ; 
 int AR_EEPROM_STATUS_DATA_BUSY ; 
 int AR_EEPROM_STATUS_DATA_PROT_ACCESS ; 
 int /*<<< orphan*/  AR_EEPROM_STATUS_DATA_VAL ; 
 scalar_t__ FUNC0 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,scalar_t__,int,int /*<<< orphan*/ ) ; 

HAL_BOOL
FUNC6(struct ath_hal *ah, u_int off, u_int16_t *data)
{
    if (FUNC1(ah) || FUNC2(ah))
    {
        (void) FUNC4(ah, AR9300_EEPROM_OFFSET + (off << AR9300_EEPROM_S));
        if (!FUNC5(ah,
			  FUNC0(ah, AR_EEPROM_STATUS_DATA),
			  AR_EEPROM_STATUS_DATA_BUSY | AR_EEPROM_STATUS_DATA_PROT_ACCESS,
			  0))
	{
            return AH_FALSE;
	}
        *data = FUNC3(FUNC4(ah,
			       FUNC0(ah, AR_EEPROM_STATUS_DATA)), AR_EEPROM_STATUS_DATA_VAL);
       return AH_TRUE;
    }
    else
    {
        *data = 0;
        return AH_FALSE;
    }
}