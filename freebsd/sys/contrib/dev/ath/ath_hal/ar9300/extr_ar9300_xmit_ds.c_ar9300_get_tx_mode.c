
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int ;


 int AR9300_DEF_MODE ;
 int AR9300_STBC_MODE ;
 int HAL_RATESERIES_STBC ;

__attribute__((used)) static u_int8_t
ar9300_get_tx_mode(u_int rate_flags)
{


    if (rate_flags & HAL_RATESERIES_STBC){
        return AR9300_STBC_MODE;
    }
    return AR9300_DEF_MODE;
}
