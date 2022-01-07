
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_8__ {int ant_div_control; } ;
struct TYPE_6__ {int op_flags; } ;
struct TYPE_9__ {int* reg_dmn; int device_cap; int rf_silent; int eeprom_version; int txrx_mask; int fast_clk5g; int rx_gain_type; int misc_configuration; int feature_enable; int swreg; int device_type; TYPE_1__ op_cap_flags; } ;
struct TYPE_7__ {int* mac_addr; TYPE_3__ base_ext1; TYPE_4__ base_eep_header; } ;
struct ath_hal_9300 {TYPE_2__ ah_eeprom; } ;
typedef TYPE_2__ ar9300_eeprom_t ;
struct TYPE_10__ {int* noise_floor_thresh_ch; int ob; int db; } ;
typedef TYPE_3__ OSPREY_BASE_EXTENSION_1 ;
typedef TYPE_4__ OSPREY_BASE_EEP_HEADER ;
typedef int EEPROM_PARAM ;


 int AR9300_EEP_BASE_DRIVE_STRENGTH ;
 int AR9300_EEP_VER_MINOR_MASK ;
 int HALASSERT (int ) ;
 TYPE_5__* p_modal ;

u_int32_t
ar9300_eeprom_get(struct ath_hal_9300 *ahp, EEPROM_PARAM param)
{
    ar9300_eeprom_t *eep = &ahp->ah_eeprom;
    OSPREY_BASE_EEP_HEADER *p_base = &eep->base_eep_header;
    OSPREY_BASE_EXTENSION_1 *base_ext1 = &eep->base_ext1;

    switch (param) {






    case 146:
        return eep->mac_addr[0] << 8 | eep->mac_addr[1];
    case 145:
        return eep->mac_addr[2] << 8 | eep->mac_addr[3];
    case 144:
        return eep->mac_addr[4] << 8 | eep->mac_addr[5];
    case 134:
        return p_base->reg_dmn[0];
    case 133:
        return p_base->reg_dmn[1];
    case 137:
        return p_base->device_cap;
    case 136:
        return p_base->op_cap_flags.op_flags;
    case 132:
        return p_base->rf_silent;
    case 128:
        return (p_base->txrx_mask >> 4) & 0xf;
    case 130:
        return p_base->txrx_mask & 0xf;






    case 149:

        return p_base->misc_configuration & 0x1;
    case 147:

        return ((p_base->feature_enable & 0x10) >> 4);
    case 129:
        return (p_base->swreg);
    case 135:

        return ((p_base->feature_enable & 0x20) >> 5);
    case 154:
        return (u_int32_t)(base_ext1->ant_div_control);
    case 153:
        return ((p_base->misc_configuration >> 3) & 0x1);
    case 138:
        return 0;
     case 150:
        return p_base->device_type;
    default:
        HALASSERT(0);
        return 0;
    }
}
