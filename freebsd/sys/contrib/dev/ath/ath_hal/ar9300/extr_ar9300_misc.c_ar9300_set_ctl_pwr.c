
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct TYPE_2__ {int * ctl_index_5g; int * ctl_index_2g; } ;
struct ath_hal_9300 {TYPE_1__ ah_eeprom; } ;
struct ath_hal {int dummy; } ;
typedef TYPE_1__ ar9300_eeprom_t ;
typedef int OSP_CAL_CTL_DATA_5G ;
typedef int OSP_CAL_CTL_DATA_2G ;
typedef int HAL_BOOL ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AH_FALSE ;
 int OSPREY_NUM_BAND_EDGES_2G ;
 int OSPREY_NUM_BAND_EDGES_5G ;
 int OSPREY_NUM_CTLS_2G ;
 int OSPREY_NUM_CTLS_5G ;
 int OS_MEMCPY (int *,int *,int) ;

HAL_BOOL
ar9300_set_ctl_pwr(struct ath_hal *ah, u_int8_t *ctl_array)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    ar9300_eeprom_t *p_eep_data = &ahp->ah_eeprom;
    u_int8_t *ctl_index;
    u_int32_t offset = 0;

    if (!ctl_array)
        return AH_FALSE;


    ctl_index = p_eep_data->ctl_index_2g;
    OS_MEMCPY(ctl_index + OSPREY_NUM_CTLS_2G, ctl_array,
                OSPREY_NUM_CTLS_2G * OSPREY_NUM_BAND_EDGES_2G +
                OSPREY_NUM_CTLS_2G * sizeof(OSP_CAL_CTL_DATA_2G));
    offset = (OSPREY_NUM_CTLS_2G * OSPREY_NUM_BAND_EDGES_2G) +
            ( OSPREY_NUM_CTLS_2G * sizeof(OSP_CAL_CTL_DATA_2G));



    ctl_index = p_eep_data->ctl_index_5g;
    OS_MEMCPY(ctl_index + OSPREY_NUM_CTLS_5G, ctl_array + offset,
                OSPREY_NUM_CTLS_5G * OSPREY_NUM_BAND_EDGES_5G +
                OSPREY_NUM_CTLS_5G * sizeof(OSP_CAL_CTL_DATA_5G));

    return AH_FALSE;
}
