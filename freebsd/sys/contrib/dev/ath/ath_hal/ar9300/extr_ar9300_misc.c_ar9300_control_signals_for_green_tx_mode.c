
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_9300 {scalar_t__ ah_hw_green_tx_enable; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AR_PHY_PAPRD_VALID_OBDB_0 ;
 int AR_PHY_PAPRD_VALID_OBDB_1 ;
 int AR_PHY_PAPRD_VALID_OBDB_2 ;
 int AR_PHY_PAPRD_VALID_OBDB_3 ;
 int AR_PHY_PAPRD_VALID_OBDB_4 ;
 int AR_PHY_PAPRD_VALID_OBDB_POSEIDON ;
 scalar_t__ AR_SREV_POSEIDON (struct ath_hal*) ;
 int OS_REG_RMW_FIELD_ALT (struct ath_hal*,int ,int ,unsigned int) ;

void
ar9300_control_signals_for_green_tx_mode(struct ath_hal *ah)
{
    unsigned int valid_obdb_0_b0 = 0x2d;
    unsigned int valid_obdb_1_b0 = 0x25;
    unsigned int valid_obdb_2_b0 = 0x1d;
    unsigned int valid_obdb_3_b0 = 0x15;
    unsigned int valid_obdb_4_b0 = 0xd;
    struct ath_hal_9300 *ahp = AH9300(ah);

    if (AR_SREV_POSEIDON(ah) && ahp->ah_hw_green_tx_enable) {
        OS_REG_RMW_FIELD_ALT(ah, AR_PHY_PAPRD_VALID_OBDB_POSEIDON,
                             AR_PHY_PAPRD_VALID_OBDB_0, valid_obdb_0_b0);
        OS_REG_RMW_FIELD_ALT(ah, AR_PHY_PAPRD_VALID_OBDB_POSEIDON,
                             AR_PHY_PAPRD_VALID_OBDB_1, valid_obdb_1_b0);
        OS_REG_RMW_FIELD_ALT(ah, AR_PHY_PAPRD_VALID_OBDB_POSEIDON,
                             AR_PHY_PAPRD_VALID_OBDB_2, valid_obdb_2_b0);
        OS_REG_RMW_FIELD_ALT(ah, AR_PHY_PAPRD_VALID_OBDB_POSEIDON,
                             AR_PHY_PAPRD_VALID_OBDB_3, valid_obdb_3_b0);
        OS_REG_RMW_FIELD_ALT(ah, AR_PHY_PAPRD_VALID_OBDB_POSEIDON,
                             AR_PHY_PAPRD_VALID_OBDB_4, valid_obdb_4_b0);
    }
}
