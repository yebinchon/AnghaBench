
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal_9300 {scalar_t__ clk_25mhz; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AR_PHY_CTRL2_TX_CAL_EN ;
 int AR_PHY_CTRL2_TX_CAL_SEL ;
 int AR_PHY_CTRL2_TX_MAN_CAL ;
 int AR_PHY_PMU1 ;
 int AR_PHY_PMU1_JUPITER ;
 int AR_PHY_PMU1_PWD ;
 int AR_PHY_PMU2 ;
 int AR_PHY_PMU2_JUPITER ;
 int AR_PHY_PMU2_PGM ;
 int AR_RTC_FORCE_SWREG_PRD ;
 int AR_RTC_PCIE_RST_PWDN_EN ;
 int AR_RTC_REG_CONTROL0 ;
 int AR_RTC_REG_CONTROL1 ;
 int AR_RTC_REG_CONTROL1_SWREG_PROGRAM ;
 int AR_RTC_SLEEP_CLK ;
 scalar_t__ AR_SREV_APHRODITE (struct ath_hal*) ;
 scalar_t__ AR_SREV_HORNET (struct ath_hal*) ;
 scalar_t__ AR_SREV_JUPITER (struct ath_hal*) ;
 scalar_t__ AR_SREV_POSEIDON (struct ath_hal*) ;
 int EEP_INTERNAL_REGULATOR ;
 int EEP_SWREG ;
 int OS_DELAY (int) ;
 int OS_REG_READ (struct ath_hal*,int) ;
 int OS_REG_READ_FIELD (struct ath_hal*,int,int ) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int,int ,int) ;
 int OS_REG_WRITE (struct ath_hal*,int,int) ;
 int ar9300_eeprom_get (struct ath_hal_9300*,int ) ;
 int ar9300_otp_read (struct ath_hal*,unsigned long,int*,int) ;

HAL_BOOL ar9300_internal_regulator_apply(struct ath_hal *ah)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    int internal_regulator = ar9300_eeprom_get(ahp, EEP_INTERNAL_REGULATOR);
    int reg_pmu1, reg_pmu2, reg_pmu1_set, reg_pmu2_set;
    u_int32_t reg_PMU1, reg_PMU2;
    unsigned long eep_addr;
    u_int32_t reg_val, reg_usb = 0, reg_pmu = 0;
    int usb_valid = 0, pmu_valid = 0;
    unsigned char pmu_refv;

    if (AR_SREV_JUPITER(ah) || AR_SREV_APHRODITE(ah)) {
        reg_PMU1 = AR_PHY_PMU1_JUPITER;
        reg_PMU2 = AR_PHY_PMU2_JUPITER;
    }
    else {
        reg_PMU1 = AR_PHY_PMU1;
        reg_PMU2 = AR_PHY_PMU2;
    }

    if (internal_regulator) {
        if (AR_SREV_HORNET(ah) || AR_SREV_POSEIDON(ah)) {
            if (AR_SREV_HORNET(ah)) {

                for (eep_addr = 0x14; ; eep_addr -= 0x10) {

                    ar9300_otp_read(ah, eep_addr / 4, &reg_val, 1);

                    if ((reg_val & 0x80) == 0x80){
                        usb_valid = 1;
                        reg_usb = reg_val & 0x000000ff;
                    }

                    if ((reg_val & 0x80000000) == 0x80000000){
                        pmu_valid = 1;
                        reg_pmu = (reg_val & 0xff000000) >> 24;
                    }

                    if (eep_addr == 0x4) {
                        break;
                    }
                }

                if (pmu_valid) {
                    pmu_refv = reg_pmu & 0xf;
                } else {
                    pmu_refv = 0x8;
                }
                if (usb_valid) {
                    OS_REG_RMW_FIELD(ah, 0x16c88, AR_PHY_CTRL2_TX_CAL_EN, 0x0);
                    OS_REG_RMW_FIELD(ah, 0x16c88, AR_PHY_CTRL2_TX_CAL_SEL, 0x0);
                    OS_REG_RMW_FIELD(ah, 0x16c88,
                        AR_PHY_CTRL2_TX_MAN_CAL, (reg_usb & 0xf));
                }

            } else {
                pmu_refv = 0x8;
            }
            if (ahp->clk_25mhz) {
                reg_pmu1_set = 0 |
                    (3 << 1) | (pmu_refv << 4) | (3 << 8) | (0 << 11) |
                    (1 << 14) | (6 << 17) | (1 << 20) | (3 << 24) |
                    (0 << 26) | (0 << 27) | (0 << 28) | (0 << 29);
            } else {
                if (AR_SREV_POSEIDON(ah)) {
                    reg_pmu1_set = 0 |
                        (5 << 1) | (7 << 4) | (2 << 8) | (0 << 11) |
                        (2 << 14) | (6 << 17) | (1 << 20) | (3 << 24) |
                        (0 << 26) | (0 << 27) | (1 << 28) | (0 << 29) ;
                } else {
                    reg_pmu1_set = 0 |
                        (4 << 1) | (7 << 4) | (3 << 8) | (0 << 11) |
                        (1 << 14) | (6 << 17) | (1 << 20) | (3 << 24) |
                        (0 << 26) | (0 << 27) | (0 << 28) | (0 << 29) ;
                }
            }
            OS_REG_RMW_FIELD(ah, reg_PMU2, AR_PHY_PMU2_PGM, 0x0);

            OS_REG_WRITE(ah, reg_PMU1, reg_pmu1_set);
            reg_pmu1 = OS_REG_READ(ah, reg_PMU1);
            while (reg_pmu1 != reg_pmu1_set) {
                OS_REG_WRITE(ah, reg_PMU1, reg_pmu1_set);
                OS_DELAY(10);
                reg_pmu1 = OS_REG_READ(ah, reg_PMU1);
            }

            reg_pmu2_set =
                 (OS_REG_READ(ah, reg_PMU2) & (~0xFFC00000)) | (4 << 26);
            OS_REG_WRITE(ah, reg_PMU2, reg_pmu2_set);
            reg_pmu2 = OS_REG_READ(ah, reg_PMU2);
            while (reg_pmu2 != reg_pmu2_set) {
                OS_REG_WRITE(ah, reg_PMU2, reg_pmu2_set);
                OS_DELAY(10);
                reg_pmu2 = OS_REG_READ(ah, reg_PMU2);
            }
            reg_pmu2_set =
                 (OS_REG_READ(ah, reg_PMU2) & (~0x00200000)) | (1 << 21);
            OS_REG_WRITE(ah, reg_PMU2, reg_pmu2_set);
            reg_pmu2 = OS_REG_READ(ah, reg_PMU2);
            while (reg_pmu2 != reg_pmu2_set) {
                OS_REG_WRITE(ah, reg_PMU2, reg_pmu2_set);
                OS_DELAY(10);
                reg_pmu2 = OS_REG_READ(ah, reg_PMU2);
            }

        } else if (AR_SREV_JUPITER(ah) || AR_SREV_APHRODITE(ah)) {

            int swreg = ar9300_eeprom_get(ahp, EEP_SWREG);
            OS_REG_WRITE(ah, reg_PMU1, swreg);
        } else {

            int swreg = ar9300_eeprom_get(ahp, EEP_SWREG);
            OS_REG_WRITE(ah, AR_RTC_REG_CONTROL1,
                         OS_REG_READ(ah, AR_RTC_REG_CONTROL1) &
                         (~AR_RTC_REG_CONTROL1_SWREG_PROGRAM));
            OS_REG_WRITE(ah, AR_RTC_REG_CONTROL0, swreg);

            OS_REG_WRITE(ah, AR_RTC_REG_CONTROL1,
                OS_REG_READ(ah, AR_RTC_REG_CONTROL1) |
                AR_RTC_REG_CONTROL1_SWREG_PROGRAM);
        }
    } else {
        if (AR_SREV_HORNET(ah) || AR_SREV_POSEIDON(ah)) {
            OS_REG_RMW_FIELD(ah, reg_PMU2, AR_PHY_PMU2_PGM, 0x0);
            reg_pmu2 = OS_REG_READ_FIELD(ah, reg_PMU2, AR_PHY_PMU2_PGM);
            while (reg_pmu2) {
                OS_DELAY(10);
                reg_pmu2 = OS_REG_READ_FIELD(ah, reg_PMU2, AR_PHY_PMU2_PGM);
            }
            OS_REG_RMW_FIELD(ah, reg_PMU1, AR_PHY_PMU1_PWD, 0x1);
            reg_pmu1 = OS_REG_READ_FIELD(ah, reg_PMU1, AR_PHY_PMU1_PWD);
            while (!reg_pmu1) {
                OS_DELAY(10);
                reg_pmu1 = OS_REG_READ_FIELD(ah, reg_PMU1, AR_PHY_PMU1_PWD);
            }
            OS_REG_RMW_FIELD(ah, reg_PMU2, AR_PHY_PMU2_PGM, 0x1);
            reg_pmu2 = OS_REG_READ_FIELD(ah, reg_PMU2, AR_PHY_PMU2_PGM);
            while (!reg_pmu2) {
                OS_DELAY(10);
                reg_pmu2 = OS_REG_READ_FIELD(ah, reg_PMU2, AR_PHY_PMU2_PGM);
            }
        } else if (AR_SREV_JUPITER(ah) || AR_SREV_APHRODITE(ah)) {
            OS_REG_RMW_FIELD(ah, reg_PMU1, AR_PHY_PMU1_PWD, 0x1);
        } else {
            OS_REG_WRITE(ah, AR_RTC_SLEEP_CLK,
                (OS_REG_READ(ah, AR_RTC_SLEEP_CLK) |
                AR_RTC_FORCE_SWREG_PRD | AR_RTC_PCIE_RST_PWDN_EN));
        }
    }

    return 0;
}
