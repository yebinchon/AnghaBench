
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int ;
struct ath_hal {int dummy; } ;
struct TYPE_8__ {TYPE_1__* ah_txq; } ;
struct TYPE_6__ {int halTotalQueues; } ;
struct TYPE_7__ {TYPE_2__ ah_caps; } ;
struct TYPE_5__ {scalar_t__ tqi_type; } ;


 TYPE_4__* AH9300 (struct ath_hal*) ;
 TYPE_3__* AH_PRIVATE (struct ath_hal*) ;
 int AR_QSTS (int) ;
 int AR_Q_RDYTIMESHDN ;
 int AR_Q_STS_PEND_FR_CNT ;
 int AR_Q_TXE ;
 int HALASSERT (int) ;
 int HALDEBUG (struct ath_hal*,int ,char*) ;
 int HAL_DEBUG_QUEUE ;
 scalar_t__ HAL_TX_QUEUE_CAB ;
 scalar_t__ HAL_TX_QUEUE_INACTIVE ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

u_int32_t
ar9300_num_tx_pending(struct ath_hal *ah, u_int q)
{
    u_int32_t npend;

    HALASSERT(q < AH_PRIVATE(ah)->ah_caps.halTotalQueues);

    npend = OS_REG_READ(ah, AR_QSTS(q)) & AR_Q_STS_PEND_FR_CNT;
    if (npend == 0) {





        if (OS_REG_READ(ah, AR_Q_TXE) & (1 << q)) {
            npend = 1;
        }
    }
    HALASSERT((npend == 0) ||
        (AH9300(ah)->ah_txq[q].tqi_type != HAL_TX_QUEUE_INACTIVE));

    return npend;
}
