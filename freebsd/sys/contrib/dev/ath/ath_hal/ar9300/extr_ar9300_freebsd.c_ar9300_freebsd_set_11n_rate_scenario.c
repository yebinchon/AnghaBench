
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ath_hal {int dummy; } ;
struct ath_desc {int dummy; } ;
typedef int HAL_11N_RATE_SERIES ;


 int ar9300_set_11n_rate_scenario (struct ath_hal*,void*,void*,int ,int ,int ,int *,int ,int ,int ) ;

void
ar9300_freebsd_set_11n_rate_scenario(struct ath_hal *ah, struct ath_desc *ds,
    u_int durUpdateEn, u_int rtsctsRate, HAL_11N_RATE_SERIES series[],
    u_int nseries, u_int flags)
{


 ar9300_set_11n_rate_scenario(ah, (void *) ds, (void *)ds, durUpdateEn,
     rtsctsRate, 0, series, nseries, flags, 0);
}
