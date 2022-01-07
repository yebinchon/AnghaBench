
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
struct ath_hal {int dummy; } ;
typedef int int32_t ;
struct TYPE_4__ {TYPE_2__** cal_pier_data_5g; int * cal_freq_pier_5g; TYPE_2__** cal_pier_data_2g; int * cal_freq_pier_2g; } ;
typedef TYPE_1__ ar9300_eeprom_t ;
struct TYPE_6__ {TYPE_1__ ah_eeprom; } ;
struct TYPE_5__ {int rx_noisefloor_cal; int rx_noisefloor_power; } ;
typedef TYPE_2__ OSP_CAL_DATA_PER_FREQ_OP_LOOP ;
typedef scalar_t__ HAL_BOOL ;


 TYPE_3__* AH9300 (struct ath_hal*) ;
 int FBIN2FREQ (int ,int) ;
 int OSPREY_MAX_CHAINS ;
 int OSPREY_NUM_2G_CAL_PIERS ;
 int OSPREY_NUM_5G_CAL_PIERS ;
 int interpolate (int,int*,int*,int) ;

int32_t
ar9300_noise_floor_cal_or_power_get(struct ath_hal *ah, int32_t frequency,
    int32_t ichain, HAL_BOOL use_cal)
{
    int nf_use = 1;
    int32_t fx[OSPREY_NUM_5G_CAL_PIERS + OSPREY_NUM_2G_CAL_PIERS];
    int32_t nf[OSPREY_NUM_5G_CAL_PIERS + OSPREY_NUM_2G_CAL_PIERS];
    int nnf;
    int is_2ghz;
    int ipier, npier;
    ar9300_eeprom_t *eep = &AH9300(ah)->ah_eeprom;
    u_int8_t *p_cal_pier;
    OSP_CAL_DATA_PER_FREQ_OP_LOOP *p_cal_pier_struct;




    if (ichain < 0 || ichain >= OSPREY_MAX_CHAINS) {
        return 1;
    }


    is_2ghz = (frequency < 4000);
    if (is_2ghz) {
        npier = OSPREY_NUM_2G_CAL_PIERS;
        p_cal_pier = eep->cal_freq_pier_2g;
        p_cal_pier_struct = eep->cal_pier_data_2g[ichain];
    } else {
        npier = OSPREY_NUM_5G_CAL_PIERS;
        p_cal_pier = eep->cal_freq_pier_5g;
        p_cal_pier_struct = eep->cal_pier_data_5g[ichain];
    }

    nnf = 0;
    for (ipier = 0; ipier < npier; ipier++) {
        fx[nnf] = FBIN2FREQ(p_cal_pier[ipier], is_2ghz);
        nf[nnf] = use_cal ?
            p_cal_pier_struct[ipier].rx_noisefloor_cal :
            p_cal_pier_struct[ipier].rx_noisefloor_power;
        if (nf[nnf] < 0) {
            nnf++;
        }
    }




    if (nnf > 0) {
        nf_use = interpolate(frequency, fx, nf, nnf);
    }

    return nf_use;
}
