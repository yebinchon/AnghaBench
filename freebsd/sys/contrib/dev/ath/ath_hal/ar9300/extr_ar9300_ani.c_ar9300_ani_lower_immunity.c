
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_9300 {struct ar9300_ani_state* ah_curani; } ;
struct ath_hal {int dummy; } ;
struct ar9300_ani_state {scalar_t__ ofdm_noise_immunity_level; scalar_t__ cck_noise_immunity_level; scalar_t__ ofdms_turn; } ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int ar9300_ani_set_cck_noise_immunity_level (struct ath_hal*,scalar_t__) ;
 int ar9300_ani_set_odfm_noise_immunity_level (struct ath_hal*,scalar_t__) ;

__attribute__((used)) static void
ar9300_ani_lower_immunity(struct ath_hal *ah)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    struct ar9300_ani_state *ani_state = ahp->ah_curani;

    if (ani_state->ofdm_noise_immunity_level > 0 &&
        (ani_state->ofdms_turn || ani_state->cck_noise_immunity_level == 0)) {



        ar9300_ani_set_odfm_noise_immunity_level(
            ah, ani_state->ofdm_noise_immunity_level - 1);





        return;
    }

    if (ani_state->cck_noise_immunity_level > 0) {



        ar9300_ani_set_cck_noise_immunity_level(
            ah, ani_state->cck_noise_immunity_level - 1);
    }
}
