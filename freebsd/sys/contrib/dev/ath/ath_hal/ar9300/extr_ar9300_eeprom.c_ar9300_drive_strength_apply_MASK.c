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
struct ath_hal_9300 {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_BIAS1 ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_BIAS2 ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_BIAS4 ; 
 int /*<<< orphan*/  EEP_DRIVE_STRENGTH ; 
 unsigned long FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC3 (struct ath_hal_9300*,int /*<<< orphan*/ ) ; 

HAL_BOOL FUNC4(struct ath_hal *ah)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);
    int drive_strength;
    unsigned long reg;

    drive_strength = FUNC3(ahp, EEP_DRIVE_STRENGTH);
    if (drive_strength) {
        reg = FUNC1(ah, AR_PHY_65NM_CH0_BIAS1);
        reg &= ~0x00ffffc0;
        reg |= 0x5 << 21;
        reg |= 0x5 << 18;
        reg |= 0x5 << 15;
        reg |= 0x5 << 12;
        reg |= 0x5 << 9;
        reg |= 0x5 << 6;
        FUNC2(ah, AR_PHY_65NM_CH0_BIAS1, reg);

        reg = FUNC1(ah, AR_PHY_65NM_CH0_BIAS2);
        reg &= ~0xffffffe0;
        reg |= 0x5 << 29;
        reg |= 0x5 << 26;
        reg |= 0x5 << 23;
        reg |= 0x5 << 20;
        reg |= 0x5 << 17;
        reg |= 0x5 << 14;
        reg |= 0x5 << 11;
        reg |= 0x5 << 8;
        reg |= 0x5 << 5;
        FUNC2(ah, AR_PHY_65NM_CH0_BIAS2, reg);

        reg = FUNC1(ah, AR_PHY_65NM_CH0_BIAS4);
        reg &= ~0xff800000;
        reg |= 0x5 << 29;
        reg |= 0x5 << 26;
        reg |= 0x5 << 23;
        FUNC2(ah, AR_PHY_65NM_CH0_BIAS4, reg);
    }
    return 0;
}