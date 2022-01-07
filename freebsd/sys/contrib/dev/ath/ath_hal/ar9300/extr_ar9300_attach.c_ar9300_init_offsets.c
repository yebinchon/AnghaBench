
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct ath_hal {int dummy; } ;


 scalar_t__ AR9300_DEVID_AR9340 ;
 int ar9300_init_hostif_offsets (struct ath_hal*) ;
 int ar9340_init_hostif_offsets (struct ath_hal*) ;

__attribute__((used)) static int ar9300_init_offsets(struct ath_hal *ah, u_int16_t devid)
{
    if (devid == AR9300_DEVID_AR9340) {
        ar9340_init_hostif_offsets(ah);
    } else {
        ar9300_init_hostif_offsets(ah);
    }
    return 0;
}
