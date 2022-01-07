
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;
struct ath_hal {int dummy; } ;


 int HAL_M_STA ;
 int ar9300_set_operating_mode (struct ath_hal*,int ) ;
 int ar9300_write_associd (struct ath_hal*,int const*,int ) ;

void
ar9300_force_tsf_sync(struct ath_hal *ah, const u_int8_t *bssid,
    u_int16_t assoc_id)
{
    ar9300_set_operating_mode(ah, HAL_M_STA);
    ar9300_write_associd(ah, bssid, assoc_id);
}
