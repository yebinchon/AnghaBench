
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_3__ {int rxstatus_offset; int rxstatus_numwords; int rxctl_offset; int rxctl_numwords; int txstatus_offset; int txstatus_numwords; int txctl_offset; int txctl_numwords; } ;
typedef TYPE_1__ HAL_DESC_INFO ;


 int RXCTL_NUMWORDS (struct ath_hal*) ;
 int RXCTL_OFFSET (struct ath_hal*) ;
 int RXSTATUS_NUMWORDS (struct ath_hal*) ;
 int RXSTATUS_OFFSET (struct ath_hal*) ;
 int TXCTL_NUMWORDS (struct ath_hal*) ;
 int TXCTL_OFFSET (struct ath_hal*) ;
 int TXSTATUS_NUMWORDS (struct ath_hal*) ;
 int TXSTATUS_OFFSET (struct ath_hal*) ;

void
ar9300_get_desc_info(struct ath_hal *ah, HAL_DESC_INFO *desc_info)
{
    desc_info->txctl_numwords = TXCTL_NUMWORDS(ah);
    desc_info->txctl_offset = TXCTL_OFFSET(ah);
    desc_info->txstatus_numwords = TXSTATUS_NUMWORDS(ah);
    desc_info->txstatus_offset = TXSTATUS_OFFSET(ah);

    desc_info->rxctl_numwords = RXCTL_NUMWORDS(ah);
    desc_info->rxctl_offset = RXCTL_OFFSET(ah);
    desc_info->rxstatus_numwords = RXSTATUS_NUMWORDS(ah);
    desc_info->rxstatus_offset = RXSTATUS_OFFSET(ah);
}
