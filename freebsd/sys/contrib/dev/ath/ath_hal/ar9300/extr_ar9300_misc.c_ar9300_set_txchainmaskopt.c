
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ath_hal_9300 {int ah_tx_chainmask; int ah_tx_chainmaskopt; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int ath_hal_printf (struct ath_hal*,char*,int,int) ;

void
ar9300_set_txchainmaskopt(struct ath_hal *ah, u_int8_t mask)
{
    struct ath_hal_9300 *ahp = AH9300(ah);


    if ((mask & ahp->ah_tx_chainmask) != mask) {
        ahp->ah_tx_chainmaskopt = 0;
        ath_hal_printf(ah, "Error: ah_tx_chainmask=%d, mask=%d\n", ahp->ah_tx_chainmask, mask);
        return;
    }

    ahp->ah_tx_chainmaskopt = mask;
}
