
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR_MIC_QOS_CONTROL ;
 int AR_MIC_QOS_SELECT ;
 int AR_QOS_NO_ACK ;
 int AR_QOS_NO_ACK_BIT_OFF ;
 int AR_QOS_NO_ACK_BYTE_OFF ;
 int AR_QOS_NO_ACK_TWO_BIT ;
 int AR_TXOP_0_3 ;
 int AR_TXOP_12_15 ;
 int AR_TXOP_4_7 ;
 int AR_TXOP_8_11 ;
 int AR_TXOP_X ;
 int AR_TXOP_X_VAL ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;
 int SM (int,int ) ;

__attribute__((used)) static inline void
ar9300_init_qos(struct ath_hal *ah)
{
    OS_REG_WRITE(ah, AR_MIC_QOS_CONTROL, 0x100aa);
    OS_REG_WRITE(ah, AR_MIC_QOS_SELECT, 0x3210);


    OS_REG_WRITE(ah, AR_QOS_NO_ACK,
        SM(2, AR_QOS_NO_ACK_TWO_BIT) |
        SM(5, AR_QOS_NO_ACK_BIT_OFF) |
        SM(0, AR_QOS_NO_ACK_BYTE_OFF));




    OS_REG_WRITE(ah, AR_TXOP_X, AR_TXOP_X_VAL);
    OS_REG_WRITE(ah, AR_TXOP_0_3, 0xFFFFFFFF);
    OS_REG_WRITE(ah, AR_TXOP_4_7, 0xFFFFFFFF);
    OS_REG_WRITE(ah, AR_TXOP_8_11, 0xFFFFFFFF);
    OS_REG_WRITE(ah, AR_TXOP_12_15, 0xFFFFFFFF);
}
