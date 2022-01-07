
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int16_t ;
struct ath_hal_9300 {int ah_eeprom; } ;
struct ath_hal {int dummy; } ;
struct TYPE_9__ {TYPE_3__* modal_header; } ;
typedef TYPE_4__ ar9300_eeprom_t ;
struct TYPE_6__ {int ath_hal_spur_mode; int ** ath_hal_spur_chans; } ;
struct TYPE_10__ {TYPE_1__ ah_config; } ;
struct TYPE_8__ {TYPE_2__* spur_chans; } ;
struct TYPE_7__ {int spur_chan; } ;
typedef size_t HAL_BOOL ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 TYPE_5__* AH_PRIVATE (struct ath_hal*) ;
 int AR_EEPROM_MODAL_SPURS ;
 int AR_NO_SPUR ;
 int HALASSERT (int) ;
 int HALDEBUG (struct ath_hal*,int ,char*,int,...) ;
 int HAL_DEBUG_ANI ;




__attribute__((used)) static u_int16_t
ar9300_eeprom_get_spur_chan(struct ath_hal *ah, int i, HAL_BOOL is_2ghz)
{
    u_int16_t spur_val = AR_NO_SPUR;
    return spur_val;
}
