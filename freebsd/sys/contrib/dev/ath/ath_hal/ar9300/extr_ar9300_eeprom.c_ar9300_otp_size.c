
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ AR_SREV_HORNET (struct ath_hal*) ;
 scalar_t__ AR_SREV_POSEIDON (struct ath_hal*) ;
 scalar_t__ base_address ;
 scalar_t__ base_address_512 ;

int32_t
ar9300_otp_size(struct ath_hal *ah)
{
    if (AR_SREV_POSEIDON(ah) || AR_SREV_HORNET(ah)) {
        return base_address_512+1;
    } else {
        return base_address+1;
    }
}
