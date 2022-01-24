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
struct ath_hal_9300 {scalar_t__ ah_hw_green_tx_enable; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_VALID_OBDB_0 ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_VALID_OBDB_1 ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_VALID_OBDB_2 ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_VALID_OBDB_3 ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_VALID_OBDB_4 ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_VALID_OBDB_POSEIDON ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

void
FUNC3(struct ath_hal *ah)
{
    unsigned int valid_obdb_0_b0 = 0x2d; // 5,5 - dB[0:2],oB[5:3]  
    unsigned int valid_obdb_1_b0 = 0x25; // 4,5 - dB[0:2],oB[5:3]  
    unsigned int valid_obdb_2_b0 = 0x1d; // 3,5 - dB[0:2],oB[5:3] 
    unsigned int valid_obdb_3_b0 = 0x15; // 2,5 - dB[0:2],oB[5:3] 
    unsigned int valid_obdb_4_b0 = 0xd;  // 1,5 - dB[0:2],oB[5:3]
    struct ath_hal_9300 *ahp = FUNC0(ah);

    if (FUNC1(ah) && ahp->ah_hw_green_tx_enable) {
        FUNC2(ah, AR_PHY_PAPRD_VALID_OBDB_POSEIDON, 
                             AR_PHY_PAPRD_VALID_OBDB_0, valid_obdb_0_b0);
        FUNC2(ah, AR_PHY_PAPRD_VALID_OBDB_POSEIDON, 
                             AR_PHY_PAPRD_VALID_OBDB_1, valid_obdb_1_b0);
        FUNC2(ah, AR_PHY_PAPRD_VALID_OBDB_POSEIDON, 
                             AR_PHY_PAPRD_VALID_OBDB_2, valid_obdb_2_b0);
        FUNC2(ah, AR_PHY_PAPRD_VALID_OBDB_POSEIDON, 
                             AR_PHY_PAPRD_VALID_OBDB_3, valid_obdb_3_b0);
        FUNC2(ah, AR_PHY_PAPRD_VALID_OBDB_POSEIDON, 
                             AR_PHY_PAPRD_VALID_OBDB_4, valid_obdb_4_b0);
    }
}