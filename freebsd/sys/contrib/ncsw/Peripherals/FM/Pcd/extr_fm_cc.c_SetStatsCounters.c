
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int statsTableAddr; } ;
typedef TYPE_1__ t_AdOfTypeStats ;


 int FM_PCD_AD_STATS_COUNTERS_ADDR_MASK ;
 int WRITE_UINT32 (int ,int) ;

__attribute__((used)) static void SetStatsCounters(t_AdOfTypeStats *p_StatsAd,
                             uint32_t statsCountersAddr)
{
    uint32_t tmp = (statsCountersAddr & FM_PCD_AD_STATS_COUNTERS_ADDR_MASK);

    WRITE_UINT32(p_StatsAd->statsTableAddr, tmp);
}
