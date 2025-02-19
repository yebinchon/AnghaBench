
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_9300 {struct ar9300_ani_state* ah_curani; } ;
struct ath_hal {int dummy; } ;
struct ar9300_ani_state {scalar_t__ ofdm_noise_immunity_level; } ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int DO_ANI (struct ath_hal*) ;
 scalar_t__ HAL_ANI_OFDM_MAX_LEVEL ;
 int ar9300_ani_set_odfm_noise_immunity_level (struct ath_hal*,scalar_t__) ;

__attribute__((used)) static void
ar9300_ani_ofdm_err_trigger(struct ath_hal *ah)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    struct ar9300_ani_state *ani_state;

    if (!DO_ANI(ah)) {
        return;
    }

    ani_state = ahp->ah_curani;

    if (ani_state->ofdm_noise_immunity_level < HAL_ANI_OFDM_MAX_LEVEL) {
        ar9300_ani_set_odfm_noise_immunity_level(
            ah, ani_state->ofdm_noise_immunity_level + 1);
    }
}
