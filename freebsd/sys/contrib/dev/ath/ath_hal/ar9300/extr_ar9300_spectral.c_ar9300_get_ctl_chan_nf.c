
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal_private {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef int int16_t ;
struct TYPE_4__ {TYPE_1__* nfp; } ;
struct TYPE_3__ {int nominal; } ;


 TYPE_2__* AH9300 (struct ath_hal*) ;
 struct ath_hal_private* AH_PRIVATE (struct ath_hal*) ;
 int AR_PHY_AGC_CONTROL ;
 int AR_PHY_AGC_CONTROL_NF ;
 int AR_PHY_CCA_0 ;
 int AR_PHY_MINCCA_PWR ;
 int MS (int,int ) ;
 int OS_REG_READ (struct ath_hal*,int ) ;

int16_t ar9300_get_ctl_chan_nf(struct ath_hal *ah)
{
    int16_t nf;




    if ( (OS_REG_READ(ah, AR_PHY_AGC_CONTROL) & AR_PHY_AGC_CONTROL_NF) == 0) {

        nf = MS(OS_REG_READ(ah, AR_PHY_CCA_0), AR_PHY_MINCCA_PWR);
    } else {

        nf = AH9300(ah)->nfp->nominal;
    }
    if (nf & 0x100) {
        nf = (0 - ((nf ^ 0x1ff) + 1));
    }
    return nf;
}
