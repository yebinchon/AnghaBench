
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
struct TYPE_3__ {int ath_hal_spur_mode; } ;
struct ath_hal {TYPE_1__ ah_config; } ;
struct TYPE_4__ {scalar_t__** ath_hal_spur_chans; } ;


 TYPE_2__* AH9300 (struct ath_hal*) ;
 int AR_EEPROM_MODAL_SPURS ;
 scalar_t__ AR_NO_SPUR ;
 int HALDEBUG (struct ath_hal*,int ,char*,scalar_t__) ;
 int HAL_DEBUG_ANI ;

int
ar9300_get_spur_info(struct ath_hal * ah, int *enable, int len, u_int16_t *freq)
{

    int i, j;

    for (i = 0; i < len; i++) {
        freq[i] = 0;
    }

    *enable = ah->ah_config.ath_hal_spur_mode;
    for (i = 0, j = 0; i < AR_EEPROM_MODAL_SPURS; i++) {
        if (AH9300(ah)->ath_hal_spur_chans[i][0] != AR_NO_SPUR) {
            freq[j++] = AH9300(ah)->ath_hal_spur_chans[i][0];
            HALDEBUG(ah, HAL_DEBUG_ANI,
                "1. get spur %d\n", AH9300(ah)->ath_hal_spur_chans[i][0]);
        }
        if (AH9300(ah)->ath_hal_spur_chans[i][1] != AR_NO_SPUR) {
            freq[j++] = AH9300(ah)->ath_hal_spur_chans[i][1];
            HALDEBUG(ah, HAL_DEBUG_ANI,
                "2. get spur %d\n", AH9300(ah)->ath_hal_spur_chans[i][1]);
        }
    }

    return 0;
}
