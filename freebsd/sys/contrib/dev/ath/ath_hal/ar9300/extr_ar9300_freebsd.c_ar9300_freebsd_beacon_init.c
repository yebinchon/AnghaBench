
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_opmode; } ;


 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int ar9300_beacon_init (struct ath_hal*,int ,int ,int ,int ) ;

void
ar9300_freebsd_beacon_init(struct ath_hal *ah, uint32_t next_beacon,
    uint32_t beacon_period)
{

 ar9300_beacon_init(ah, next_beacon, beacon_period, 0,
     AH_PRIVATE(ah)->ah_opmode);
}
